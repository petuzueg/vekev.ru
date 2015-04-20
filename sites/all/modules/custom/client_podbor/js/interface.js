var $ = jQuery, need_location = 0, adrs, lat, lon;

function getAddress() {
    if (need_location == 1) {
        need_location = 0;
        yaCounter12247393.reachGoal('podbor_form');
        // сделать кнопку неактивной. показать процесс
        //$('#edit-submit').attr("disabled", "disabled");
        var geocoder = new google.maps.Geocoder();
        if (geocoder) {
            geocoder.geocode({ 'address': adrs.val() }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    $('#location').val(results[0].geometry.location.d + ',' + results[0].geometry.location.e);
                    $('#client-podbor-form .inline-messages').text('');
                    //console.log("Got location!");
                    //$('#edit-submit').removeAttr("disabled");
                }
                else {
                    //console.log("Geocoding failed: " + status);
                    $('#client-podbor-form .inline-messages').html('<div class="messages error"><h2 class="element-invisible">Сообщение об ошибке</h2>Не удалось определить адрес.</div>');
                }
            });
        }
    }
}

$(document).ready(function () {
    navigator.geolocation.getCurrentPosition(
        get_current_location,
        error_location, {
            enableHighAccuracy: true,
            timeout: 60000,
            maximumAge: 600000
        });
    /*setTimeout(function() {
        if (!lat) {
            $('#loc_message').removeClass('hidden');
        }
    }, 1000);*/

    adrs = $('#edit-address');
    $('#client-podbor-form').live("mousemove", getAddress);
    adrs.live("change", getAddress);
    adrs.live("input", function () {
        if (need_location == 0) {
            need_location = 1;
        }
    });
});

function get_current_location(location) {
    //определить браузер и показать картинку для этого браузера.
    // скрыть пояснялку
    $('#loc_message').addClass('hidden');
    lat = location.coords.latitude;
    lon = location.coords.longitude;
    //alert(location.coords.accuracy);
    $('#location').val(lat + ',' + lon);
    // определить адрес, ввести его в поле "адрес"
    var geocoder = new google.maps.Geocoder();
    if (geocoder) {
        var latlng = new google.maps.LatLng(lat, lon);
        geocoder.geocode({ 'latLng': latlng }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                $('#edit-address').val(results[0].formatted_address);
                console.log(results);
            }
            else {
                //console.log("Geocoding failed: " + status);
//                $('#client-podbor-form .inline-messages').html('<div class="messages error"><h2 class="element-invisible">Сообщение об ошибке</h2>Не удалось определить адрес.</div>');
            }
        });
    }
    // запросить ближайшие эвакуаторы по широте-долготе
    //$('#edit-submit').trigger( "mousedown" );
    $('#e-count').html('Найдено <strong>7</strong> эвакуаторов поблизости');

}

function error_location(err) {
    console.warn('ERROR(' + err.code + '): ' + err.message);
}

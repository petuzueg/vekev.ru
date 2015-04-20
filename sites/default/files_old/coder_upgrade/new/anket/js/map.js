
var map;
var markersArray = [];

window.onload = initMap ;

function initMap()
{
    var lat = '55.753';
    var lng = '37.626';
    var old_pos = 0;
    
    if(document.getElementById("edit-latFld").value){
        lng = document.getElementById("edit-lngFld").value;
        lat = document.getElementById("edit-latFld").value;
        old_pos = 1;
    }
    
    var latlng = new google.maps.LatLng(lat, lng);
    var myOptions = {
        zoom: 10,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
    
    if(old_pos == 1){
        var marker = new google.maps.Marker({
            position: latlng, 
            map: map
        });
        markersArray.push(marker);
    }
    // add a click event handler to the map object
    google.maps.event.addListener(map, "click", function(event)
    {
        // place a marker
        placeMarker(event.latLng);

        // display the lat/lng in your form's lat/lng fields
        document.getElementById("edit-latFld").value = event.latLng.lat();
        document.getElementById("edit-lngFld").value = event.latLng.lng();
    });
}
function placeMarker(location) {
    // first remove all markers if there are any
    deleteOverlays();

    var marker = new google.maps.Marker({
        position: location, 
        map: map
    });

    // add marker in markers array
    markersArray.push(marker);

    //map.setCenter(location);
}

// Deletes all markers in the array by removing references to them
function deleteOverlays() {
    if (markersArray) {
        for (i in markersArray) {
            markersArray[i].setMap(null);
        }
    markersArray.length = 0;
    }
}

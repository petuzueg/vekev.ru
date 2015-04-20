jQuery(document).ready(function () {
    var drpdwn = jQuery("#city").mcDropdown("#categorymenu", {
        allowParentSelect: true,
        delim: " > ",
        valueAttr: "title",
        //showACOnEmptyFocus: true,
        select: function(){document.location.href = jQuery('#city').val();}

    });
        jQuery(".mcdropdown a").text('выберите регион');
});

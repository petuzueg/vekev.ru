jQuery(document).ready(function($) {
    jQuery('#edit-submit').bind('click', function(){
        jQuery('#edit-field-static-address-text-und-0-value').val(jQuery('#edit-field-static-address-und-0-address-field').val());
    });
});

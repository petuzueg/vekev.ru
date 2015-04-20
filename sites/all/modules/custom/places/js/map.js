jQuery(function(){
		  //create map
		 var mapCenter=new google.maps.LatLng(55.755, 37.623);
		 var myOptions = {
		  	zoom: 11,
		  	center: mapCenter,
		  	mapTypeId: google.maps.MapTypeId.ROADMAP
		  }
		 map = new google.maps.Map(document.getElementById('main-map'), myOptions);
		 
		 var creator = new PolygonCreator(map);
		 
		 //reset
		 jQuery('#reset').click(function(){ 
		 		creator.destroy();
		 		creator=null;
		 		jQuery('#edit-field-polygon-und-0-value').empty();
		 		creator=new PolygonCreator(map);
		 });		 
		 
		 
		 //show paths
		 jQuery('#showData').click(function(){ 
		 		jQuery('#edit-field-polygon-und-0-value').empty();		 	
		 		if(null==creator.showData()){
		 			jQuery('#edit-field-polygon-und-0-value').append('Пожалуста, сначала задайте регион при помощи мыши!');
		 		}else{
		 			jQuery('#edit-field-polygon-und-0-value').append(creator.showData());
		 		}
		 });
	});
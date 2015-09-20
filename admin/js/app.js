$(document).ready(function(){

	/* Tooltip */
	$(document).tooltip({
      track: true
    });

    /* DropDown */
    $('.dropDown').on('click',function(){

    	var dropDown = $(this);
        var dropDownMenu = dropDown.find('.dropDownMenu');
    	var dropDownHeight = dropDown.height();

    	dropDownMenu.css({
    		'top':dropDownHeight,
    		'right': "0px"
    	});

    	if(!dropDown.hasClass('active')){
    		dropDown.addClass('active');
    		dropDownMenu.fadeIn('fast');
    	}else{
    		dropDown.removeClass('active');
    		dropDownMenu.fadeOut('fast');
    	}

    });

    /* Picto menu mobile */
    $('#headerMobile').on('click',function(){

        var bouton = $(this);
        var menu = $('#menu');
        var container = $('#container');

        if(!menu.hasClass('active')){
            bouton.addClass('active');
            menu.addClass('active');
            container.addClass('active');
        }else{
            bouton.removeClass('active');
            menu.removeClass('active');
            container.removeClass('active');
        }

    });

    /* Resize de la fenêtre du navigateur */
    $(window).resize(function() {

        var windowWidth = $(window).width();

        var bouton = $('#headerMobile');
        var menu = $('#menu');
        var container = $('#container');

        if(menu.hasClass('active')){
            bouton.removeClass('active');
            menu.removeClass('active');
            container.removeClass('active');
        }

    });

});

$().ready(function() {
	$('div.corners').livequery(function(){ $(this).corner('5px'); });
    $('.lavaLamp').lavaLamp({ fx: 'backout', speed: 700 });
    
    if ($(document).height() - 30 < $(window).height())
    {
    	$('#height-enforcer').css('height', $(window).height() - $(document).height() + 30);
    }
});

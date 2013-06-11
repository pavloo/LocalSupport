$(document).ready(function() {
    $('.pagination').hide();
    $('#organizations').addClass('scrollable')

    $("#organizations").endlessScroll({
        fireOnce: false,
        fireDelay: false,
        loader: '<div class="loading"><div>',
        /*TODO: pavel: create ajax request
        see https://github.com/fredwu/jquery-endless-scroll for details*/
        callback: function(p){
            alert("test");
        }
    });
});



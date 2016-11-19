if (typeof jQuery !== 'undefined') {
    (function ($) {
        $('#spinner').ajaxStart(function () {
            $(this).fadeIn();
        }).ajaxStop(function () {
            $(this).fadeOut();
        });
    })(jQuery);
}
var app_name = document.getElementById("metadata_app_name").value;

$('#search_value').on("keypress", function (event) {
    var key = event.which;
    var category = document.getElementById("search_category").value;
    
    if ($(this).val() && key == 13)  // the enter key code
    {
        if(category !== "0") {
            category = $("#search_category option:selected").text()
        } else {
            category = "all"
        }
        var filterQuery = 'category=' + category +'&name='+$(this).val();
        localStorage.setItem('filter-query', filterQuery);
//        $(location).attr('href', "/" + app_name + '/product/search?' + filterQuery +"&filter=0-8")
        $(location).attr('href', "/" + app_name + '/product/search?' + filterQuery)
    }

});

$('#search_button').click( function (event) {
    var searchValue = document.getElementById("search_value").value;
    var category = document.getElementById("search_category").value;

    if(searchValue) {
        if(category !== "0") {
            category = $("#search_category option:selected").text()
        } else {
            category = "all"
        }
        var filterQuery = 'category=' + category +'&name='+searchValue;
        localStorage.setItem('filter-query', filterQuery);
//       $(location).attr('href', "/" + app_name + '/product/search?' + filterQuery +"&filter=0-8")
       $(location).attr('href', "/" + app_name + '/product/search?' + filterQuery)
    }
});


$('#page_nav_first, #page_nav_middle, #page_nav_last').click(function (event) {
    var id = $(this).attr('id');
    var filter_query = localStorage.getItem('filter-query');
    switch (id) {
        case 'page_nav_first':
            $('#page_nav_first').addClass("active");
            $('#page_nav_middle').removeClass('active')
            $('#page_nav_last').removeClass('active')
            break;
        case 'page_nav_middle':
            $('#page_nav_first').removeClass("active");
            $('#page_nav_middle').addClass('active')
            $('#page_nav_last').removeClass('active')
            break;
        case 'page_nav_last':
            $('#page_nav_first').removeClass("active");
            $('#page_nav_middle').removeClass('active')
            $('#page_nav_last').addClass('active')
            break;
    }
    
});

$('#page_nav_prev, #page_nav_next').click(function (event) {
    
    var id = $(this).attr('id');
    var filterQuery = localStorage.getItem('filter-query');
    switch (id) {
        case 'page_nav_next':
            if($( "#page_nav_first" ).hasClass( "active" )) {
                $('#page_nav_first').removeClass("active");
                $('#page_nav_middle').addClass('active')
            } else if($('#page_nav_middle').hasClass( "active" )) {
                $('#page_nav_middle').removeClass('active')
                $('#page_nav_last').addClass('active')
            } else if($('#page_nav_last').hasClass( "active" )) {
                $('#page_nav_first_link').text(parseInt($('#page_nav_first_link').text()) + 1)
                $('#page_nav_middle_link').text(parseInt($('#page_nav_middle_link').text()) + 1)
                $('#page_nav_last_link').text(parseInt($('#page_nav_last_link').text()) + 1)
            }
//            $(location).attr('href', "/" + app_name + '/product/search?' + filterQuery +"&filter=0-10")
            break;
        case 'page_nav_prev':
             
            if($( "#page_nav_last" ).hasClass( "active" )) {
                $('#page_nav_last').removeClass("active");
                $('#page_nav_middle').addClass('active')
            } else if($('#page_nav_middle').hasClass( "active" )) {
                $('#page_nav_middle').removeClass('active')
                $('#page_nav_first').addClass('active')
            } else if($('#page_nav_first').hasClass( "active" )) {
                var first_link_text = parseInt($('#page_nav_first_link').text())
                if(first_link_text > 1) {
                    $('#page_nav_first_link').text(parseInt($('#page_nav_first_link').text()) - 1)
                    $('#page_nav_middle_link').text(parseInt($('#page_nav_middle_link').text()) - 1)
                    $('#page_nav_last_link').text(parseInt($('#page_nav_last_link').text()) - 1)
                }
                
            }
            break;
    }
    
    
});
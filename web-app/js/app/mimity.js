// Function to check element is exist
$.fn.exist = function(){ return $(this).length > 0; }

// Function to get window width
function get_width() {
  return $(window).width();
}

// Function to set color & style
function set_color() {
  var color = localStorage.getItem('mimity-color');
  var style = localStorage.getItem('mimity-style');
  $('#color-chooser').val(color);
  $('#style-chooser').val(style);
  console.log("App name:  "+document.getElementById("metadata_app_name").value)
  var app_name = document.getElementById("metadata_app_name").value;
  $('#theme').attr('href',"/" + app_name + '/css/app/style.'+color+'.'+style+'.css');
//  $('.logo img').attr('src',"/" + app_name + '/images/logo-'+color+'.png');
}

$(function(){

  // Change Color Style
  $('.chooser-toggle').click(function(){
    $('.chooser').toggleClass('chooser-hide');
  });
  if (localStorage.getItem('mimity-color') == null) {
    localStorage.setItem('mimity-color', 'teal');
  }
  if (localStorage.getItem('mimity-style') == null) {
    localStorage.setItem('mimity-style', 'flat');
  }
  set_color();
  $('#color-chooser').change(function(){
    localStorage.setItem('mimity-color', $(this).val());
    set_color();
  });
  $('#style-chooser').change(function(){
    localStorage.setItem('mimity-style', $(this).val());
    set_color();
  });

  // open navigation dropdown on hover (only when width >= 768px)
  $('ul.nav li.dropdown').hover(function() {
    if (get_width() >= 768) {
      $(this).addClass('open');
    }
  }, function() {
    if (get_width() >= 768) {
      $(this).removeClass('open');
    }
  });

  // owlCarousel for Home Slider
  if ($('.home-slider').exist()) {
    $('.home-slider').owlCarousel({
      items:1,
        loop:true,
        autoplay:true,
        autoplayHoverPause:true,
        dots:false,
        nav:true,
        navText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
    });
  }

  // owlCarousel for Widget Slider
  if ($('.widget-slider').exist()) {
    var widget_slider = $('.widget-slider');
    widget_slider.owlCarousel({
      loop:true,
      dots:false,
      nav:true,
      navText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
      responsive:{
        0:{
          items:1,
        },
        768:{
          items:3,
          margin:15
        },
        992:{
          items:1,
        }
      }
    });
    widget_slider.on('changed.owl.carousel', function(event) {
      $('button[data-toggle="tooltip"]').tooltip({container:'body',animation:false});
      $('a[data-toggle="tooltip"]').tooltip({container:'body',animation:false});
    });
  }

  // owlCarousel for Brand Slider
  if ($('.brand-slider').exist()) {
    var brand_slider = $('.brand-slider');
    brand_slider.owlCarousel({
      dots:false,
      nav:true,
      navText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
      responsive:{
        0:{
          items:1,
        },
        480:{
          items:2,
          margin:15
        },
        768:{
          items:3,
          margin:15
        },
        992:{
          items:4,
          margin: 30
        },
        1200:{
          items:6,
          margin: 30
        }
      }
    });
  }

  // Tooltip
  $('button[data-toggle="tooltip"]').tooltip({container:'body',animation:false});
  $('a[data-toggle="tooltip"]').tooltip({container:'body',animation:false});

  // Back top Top
    $(window).scroll(function(){
    if ($(this).scrollTop()>70) {
      $('.back-top').fadeIn();
    } else {
      $('.back-top').fadeOut();
    }
  });

  // Touchspin
  if ($('.input-qty').exist()) {
    $('.input-qty input').TouchSpin({
      verticalbuttons: true,
      prefix: 'qty'
    });
  }

});
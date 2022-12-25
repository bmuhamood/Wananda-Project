(function($) {
  "use strict";
  $(window).resize(function() {
      if ($(window).width() < 768) {
          $('.sidebar .collapse').collapse('hide');
      };
  });
  $(document).on('scroll', function() {
      var scrollDistance = $(this).scrollTop();
      if (scrollDistance > 100) {
          $('.scroll-to-top').fadeIn();
      } else {
          $('.scroll-to-top').fadeOut();
      }
  });
  $(document).on('click', 'a.scroll-to-top', function(e) {
      var $anchor = $(this);
      $('html, body').stop().animate({
          scrollTop: ($($anchor.attr('href')).offset().top)
      }, 1000, 'easeInOutExpo');
      e.preventDefault();
  });
  $(function() {
      $("body").on("input propertychange", ".floating-label-form-group", function(e) {
          $(this).toggleClass("floating-label-form-group-with-value", !!$(e.target).val());
      }).on("focus", ".floating-label-form-group", function() {
          $(this).addClass("floating-label-form-group-with-focus");
      }).on("blur", ".floating-label-form-group", function() {
          $(this).removeClass("floating-label-form-group-with-focus");
      });
  });
  var oneobjowlcarousel = $(".owl-carousel-one");
  if (oneobjowlcarousel.length > 0) {
      oneobjowlcarousel.owlCarousel({
          items: 1,
          lazyLoad: true,
          pagination: false,
          loop: true,
          dots: false,
          autoPlay: 2000,
          nav: true,
          stopOnHover: true,
          navText: ["<i class='icofont-thin-left'></i>", "<i class='icofont-thin-right'></i>"]
      });
  }
  var objowlcarousel = $(".owl-carousel-two");
  if (objowlcarousel.length > 0) {
      objowlcarousel.owlCarousel({
          items: 2,
          lazyLoad: true,
          pagination: false,
          loop: true,
          dots: false,
          autoPlay: 2000,
          margin: 15,
          nav: true,
          stopOnHover: true,
          navText: ["<i class='icofont-thin-left'></i>", "<i class='icofont-thin-right'></i>"],
          responsive: {
              0: {
                  items: 1
              },
              479: {
                  items: 1
              },
              768: {
                  items: 1
              },
              979: {
                  items: 2
              },
              1199: {
                  items: 2
              }
          }
      });
  }
  var threeobjowlcarousel = $(".owl-carousel-three");
  if (threeobjowlcarousel.length > 0) {
      threeobjowlcarousel.owlCarousel({
          items: 3,
          lazyLoad: true,
          pagination: false,
          loop: true,
          dots: false,
          autoPlay: 2000,
          margin: 15,
          nav: true,
          stopOnHover: true,
          navText: ["<i class='icofont-thin-left'></i>", "<i class='icofont-thin-right'></i>"],
          responsive: {
              0: {
                  items: 1
              },
              479: {
                  items: 1
              },
              768: {
                  items: 2
              },
              979: {
                  items: 3
              },
              1199: {
                  items: 3
              }
          }
      });
  }
  var fiveobjowlcarousel = $(".owl-carousel-four");
  if (fiveobjowlcarousel.length > 0) {
      fiveobjowlcarousel.owlCarousel({
          items: 4,
          lazyLoad: true,
          pagination: false,
          loop: true,
          dots: false,
          margin: 15,
          autoPlay: 2000,
          nav: true,
          stopOnHover: true,
          navText: ["<i class='icofont-thin-left'></i>", "<i class='icofont-thin-right'></i>"],
          responsive: {
              0: {
                  items: 1
              },
              479: {
                  items: 1
              },
              768: {
                  items: 2
              },
              979: {
                  items: 4
              },
              1199: {
                  items: 4
              }
          }
      });
  }
  var fiveobjowlcarousel = $(".owl-carousel-five");
  if (fiveobjowlcarousel.length > 0) {
      fiveobjowlcarousel.owlCarousel({
          items: 5,
          lazyLoad: true,
          pagination: false,
          loop: true,
          dots: false,
          autoPlay: 2000,
          margin: 15,
          nav: true,
          stopOnHover: true,
          navText: ["<i class='icofont-thin-left'></i>", "<i class='icofont-thin-right'></i>"],
          responsive: {
              0: {
                  items: 1
              },
              479: {
                  items: 1
              },
              768: {
                  items: 2
              },
              979: {
                  items: 4
              },
              1199: {
                  items: 5
              }
          }
      });
  }
  var restaurantslider = $(".restaurant-slider");
  if (restaurantslider.length > 0) {
      restaurantslider.owlCarousel({
          items: 1,
          lazyLoad: true,
          pagination: false,
          loop: true,
          dots: false,
          autoPlay: 2000,
          nav: true,
          stopOnHover: true,
          navText: ["<i class='icofont-thin-left'></i>", "<i class='icofont-thin-right'></i>"]
      });
  }
  $('a[href*="#"]').not('[href="#"]').not('[href="#0"]').click(function(event) {
      if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
          var target = $(this.hash);
          target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
          if (target.length) {
              event.preventDefault();
              $('html, body').animate({
                  scrollTop: target.offset().top
              }, 1000, function() {
                  var $target = $(target);
                  $target.focus();
                  if ($target.is(":focus")) {
                      return false;
                  } else {
                      $target.attr('tabindex', '-1');
                      $target.focus();
                  };
              });
          }
      }
  });
  $('select').select2();
  $('[data-toggle="tooltip"]').tooltip()
})(jQuery);
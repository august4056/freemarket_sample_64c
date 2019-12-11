$(document).on('turbolinks:load', function(){
  $('.slick').slick({

    prevArrow: '<img src="fa fa-angle-left arrow arrow-left" class="slide-arrow prev-arrow">',
    nextArrow: '<img src="fa fa-angle-right arrow arrow-right" class="slide-arrow next-arrow">',
    autoplay: true,// 自動再生
    autoplaySpeed: 3000,
    dots: true,// ドットの描写
    arrows: true,
    draggable: true
    
  });
});
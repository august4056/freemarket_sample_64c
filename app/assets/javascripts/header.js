window.addEventListener("load", function() {

  //カテゴリー開閉
  document.getElementById("categoly__search").addEventListener("mouseover", function(){
    document.getElementById("ex_menu1").style.display = 'block';
  }, false);
  
  document.getElementById("categoly__search").addEventListener("mouseout", function(){
    document.getElementById("ex_menu1").style.display = 'none';
  }, false);
  
  document.getElementById("ex_out1").addEventListener("mouseover", function(){
    document.getElementById("ex_menu1").style.display = 'block';
  }, false);
  
  document.getElementById("ex_out1").addEventListener("mouseout", function(){
    document.getElementById("ex_menu1").style.display = 'none';
  }, false);
  
  // ブランド開閉
  document.getElementById("brand-search").addEventListener("mouseover", function(){
    document.getElementById("ex_menu2").style.display = 'block';
  }, false);
  
  document.getElementById("brand-search").addEventListener("mouseout", function(){
    document.getElementById("ex_menu2").style.display = 'none';
  }, false);
  
  document.getElementById("ex_out2").addEventListener("mouseover", function(){
    document.getElementById("ex_menu2").style.display = 'block';
  }, false);
  
  document.getElementById("ex_out2").addEventListener("mouseout", function(){
    document.getElementById("ex_menu2").style.display = 'none';
  }, false);
  
  //レディース開閉

  document.getElementById("ladies1_list").addEventListener("mouseover", function(){
    document.getElementById("ladies_ul").style.display = 'block';
  }, false);
  
  document.getElementById("ladies1_list").addEventListener("mouseout", function(){
    document.getElementById("ladies_ul").style.display = 'none';
  }, false);

  document.getElementById("ladies_ul").addEventListener("mouseover", function(){
    document.getElementById("ladies_ul").style.display = 'block';
  }, false);
  
  document.getElementById("ladies_ul").addEventListener("mouseout", function(){
    document.getElementById("ladies_ul").style.display = 'none';
  }, false);

  //トップス開閉

  document.getElementById("tops_list").addEventListener("mouseover", function(){
    document.getElementById("tops_ul").style.display = 'block';
  }, false);
  
  document.getElementById("tops_list").addEventListener("mouseout", function(){
    document.getElementById("tops_ul").style.display = 'none';
  }, false);

  document.getElementById("tops_ul").addEventListener("mouseover", function(){
    document.getElementById("tops_ul").style.display = 'block';
  }, false);
  
  document.getElementById("tops_ul").addEventListener("mouseout", function(){
    document.getElementById("tops_ul").style.display = 'none';
  }, false);

  $(function(){
    $(".categoly__title:has(a)").addClass("links-hover");
  });
  
  $(function(){
    $("#ex_menu1:has(a)").addClass("title1-over");
    
    $('#categoly__search').mouseover(function() {
      $(this).css('color', '#51ceff');
    });
    
    $('#categoly__search').mouseout(function() {
      $(this).css('color', 'black');
    });


    $('.title1-over').mouseover(function() {
      $('#categoly__search').css('color', '#51ceff');
    });

    $('.title1-over').mouseout(function() {
      $('#categoly__search').css('color', '');
    });
    
  });


  $(function(){
    $("#ex_menu2:has(a)").addClass("title2-over");

    $('#brand-search').mouseover(function() {
      $(this).css('color', '#51ceff');
    });
    
    $('#brand-search').mouseout(function() {
      $(this).css('color', 'black');
    });

    $('.title2-over').mouseover(function() {
      $('#brand-search').css('color', '#51ceff');
    });

    $('.title2-over').mouseout(function() {
      $('#brand-search').css('color', 'black');
    });
    
  });

});
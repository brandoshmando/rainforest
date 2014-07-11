$(document).on('ready page: load', function(){
  if ($('.pagination').length){
    $(window).scroll(function(){
      var url = $('.pagination span.next').children().attr('href');
      if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50){
        $('.pagination').text('Fetching more products for you viewing pleasure...');
        return $.getScript(url);
      };
    });
  }
  // $('#search-form').submit(function(ev){
  //   ev.preventDefault();
  //   var searchValue = $('#search').val();

  //   $.getScript('/products?search=' + searchValue).done(function(data){
  //     console.log(data)
  //   });
  // });
})

// $(document).on('ready page: load', function(){
//   $('#search-form').submit(function(ev){
//     ev.preventDefault();
//     var searchValue = $('#search').val();

//     $.get('/products?search=' + searchValue).done(function(data){
//       $('#products').html(data)
//     });
//   });
// })










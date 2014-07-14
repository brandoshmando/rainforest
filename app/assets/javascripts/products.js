$(document).on('ready page: load', function(){
  if ($('.pagination').length){
    $(window).scroll(function(){
      var url = $('.pagination span.next').children().attr('href');
      if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50){
        $('.pagination').text('Fetching more products for you viewing pleasure...');
        return $.getScript(url);
      };
    });

    function(){
      $('#new-product').on('ajax:beforeSend', function(){
        $("input[type='submit']").val('Saving...').attr('disable', 'disable')
      }).on('ajax:complete' function(){
        $("input[type='submit']").val('Create Review').removeAttr('disabled')
      });
    };
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










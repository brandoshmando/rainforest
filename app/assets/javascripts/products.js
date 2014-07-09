$(document).on('ready page: load', function(){
  $('#search-form').submit(function(ev){
    ev.preventDefault();
    var searchValue = $('#search').val();

    $.getScript('/products?search=' + searchValue).done(function(data){
      console.log(data)
    });
  });
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










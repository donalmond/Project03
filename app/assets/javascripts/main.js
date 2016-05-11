$(function(){

  $('#sendvote').click(function(e){
    e.preventDefault();
    // alert($(this).attr('post_id'));
    $.ajax({
      url: '/posts/' + $(this).attr('post_id') + '/vote',
      dataType: 'json',
    }).done(function(data){
      // handle ajax response
      console.log(data.vote);
    });

  });

});

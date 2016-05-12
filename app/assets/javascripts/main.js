
var testvar = 1;
$(function(){

  $('#sendvote').click(function(e){
    e.preventDefault();
    console.log(  '/posts/' + $(this).attr('post_id') + '/vote'  );
    $.ajax({
      url: '/posts/' + $(this).attr('post_id') + '/vote',
      dataType: 'json',
    }).done(function(data){
      // handle ajax response

      console.log(data.vote);

      var vote = data.vote
      if (vote === 1) {
        $('.heart').css('fill', 'red');
      } else {
      $('.heart').css('fill', 'grey');
      }

    });

  });

});

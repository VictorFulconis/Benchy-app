// <script>
// $( "textarea" ).click(function() {
//   .btn-save-comment.show();
// });
// </script>

$(".comment textarea").click(function() {
  $(this).parents('.comment').find('.btn-save-comment').css('visibility', 'visible');
});

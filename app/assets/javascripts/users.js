jQuery(document).ready(function(){
  $("#id").change(function() {
    $.ajax({
     url: "/users/" + $(this).val() + "/question.json",
     success: function(msg){
       $("#question_text").text(msg);
       $("#question").show();
     }
    });
  
  });
});
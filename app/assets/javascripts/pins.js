
$(window).ready(function(){
  $(document).ready(function(){$('#myModal').modal("show")});

  $("#new-task-button").on("click", function(event){
    event.preventDefault();
    $("#super-wicked-modal").modal("show");
  });

  $('#super-wicked-modal').on('shown.bs.modal', function () {
    $('#task_name').focus();
  });

});

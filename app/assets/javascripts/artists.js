function submitTodo(event) {
  event.preventDefault();

}


$(document).ready(function() {
  console.log("Hello");
  $("form").bind('submit', submitTodo);
});

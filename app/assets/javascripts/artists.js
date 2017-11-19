function createSong(title) {
  var newSong = { title: title };

  $.ajax({
    type: "POST",
    url: "/artists/1/songs.json", //change artist id
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data){
    console.log(data);
  })
}

function submitSong(event) {
  event.preventDefault();
  createSong($("#song_title").val());
  $("#song_title").val(null);
}

$(document).ready(function() {
  console.log("Hello");
  $("form").bind('submit', submitSong);
});

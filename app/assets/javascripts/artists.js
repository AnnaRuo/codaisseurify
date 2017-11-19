function createSong(new_song_title, new_song_album) {
  console.log("title " +new_song_title);
  var newSong = { title: new_song_title };
  var newAlbum = { album : new_song_album};

  $.ajax({
    type: "POST",
    url: "/api/artists/1/songs", //change artist id
    data: JSON.stringify({ song : { title : new_song_title, album : new_song_album }, artist_id : 1 }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data){
    console.log(data);

    var songId = data.id; //server

    var pSong = $('<p> Song: ' + new_song_title + '</p>')
    var pAlbum = $('<p> Album: ' + new_song_album + '</p>')
    var button = $('<div></div>')

    $('#songList').append(pSong);
    $('#songList').append(pAlbum);
    $('#songList').append(button);
  })
}

function deleteSong(songId) {
console.log('helloloooo:'+ songId);
  $.ajax({
    type: "DELETE",
    url: "/api/artists/1/songs/" +songId,
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('div[data-id="' + songId + '"]').remove();
  });
}

function deleteAllSongs() {
  console.log("Hello")
  $(".songAlbum").each(function(i){

    console.log("Hiya" + $(this).attr('data-id'))
    deleteSong($(this).attr('data-id'));
  });
}

function submitSong(event) {
  event.preventDefault();
  createSong($("#title").val(), ($("#album").val()));
  $("#title").val(null);
  $("#album").val(null);
}

$(document).ready(function() {
  console.log("Hello");
  $("form").bind('submit', submitSong);
});

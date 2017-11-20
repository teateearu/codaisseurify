function createSong(artist_id) {
  var titleIs = $("#addTitle").val();
  var yearIs = $("#addYear").val();

  $.ajax({
    type: "POST",
    url: "/api/artists/" + artist_id + "/songs",
    data: JSON.stringify({
      song_title: titleIs,
      song_year: yearIs
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    location.reload();
  });
}

function deleteSong(artist_id, song_id) {
  var confirmed = confirm("Are you sure?");

  if (confirmed) {
    $.ajax({
      type: "DELETE",
      url: '/api/artists/' + artist_id + '/songs/' + song_id,
      contentType: "application/json",
      dataType: "json"})

    .done(function(data) {
      location.reload();
    });
  }
}


 $(document).ready(function() {
   $("#songForm").hide();
   $("#listSongs").show();
   $("#addButton").click(function(){
     $("#listSongs").hide();
     $("#songForm").show();
   });
 });

function createSong(artist_id) {
  var title = $("#addTitle").val();
  var year = $("#addYear").val();

  $.ajax({
    type: "POST",
    url: "/api/artists/" + artist_id + "/songs",
    data: JSON.stringify({
      song_title: title,
      song_year: year
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    location.reload();
  });
}

 function deleteSong(songId) {
   $.ajax({
     type: "DELETE",
     url: "/artists/" + artistId + "/songs/" + songId + ".json",
     contentType: "application/json",
     dataType: "json"
   })
   .done(function(data) {
     $('tr[data-id="'+songId+'"]').remove();
   });
 }



 $(document).ready(function() {
   $("#songForm").hide();
   $(".delete-song").bind('click', deleteSong);
 });

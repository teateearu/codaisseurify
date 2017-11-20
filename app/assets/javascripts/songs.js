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
   $("#listSongs").show();
   $("#addButton").click(function(){
     $("#listSongs").hide();
     $("#songForm").show();
   });
   $(".delete-song").bind('click', deleteSong);
 });

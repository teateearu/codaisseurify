function createSong(title, year) {
  var newSong = { title: title, year: year };

  $.ajax({
    type: "POST",
    url: "/api/artists/" + artist_id + "/songs",
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    var rowId = data.id;

    var $delBtn = $('<a href="#" class="btn btn-default" id="del-button">Delete</a>');

    var tableRow = $('<tr class="song"></tr>')
      .attr('data-id', rowId)
      .append($('<td>').append($('<p>')).html(title))
      .append($('<td>').append($('<p>')).html(year))
      .append($('<td>').append($delBtn.bind('click', deleteSong )));

    $('#table').find($('tr')).first().after(tableRow);
  })
  .fail(function(error) {
    console.log(error);

    error_message = error.responseJSON.title[0];
    showError(error_message);
  });
}

function showError(message) {
  var errorHelpBlock = $('<span class="help-block"></span>')
    .attr('id', 'error_message')
    .text(message);

    $("#formgroup-title")
    .addClass("has-error")
    .append(errorHelpBlock);
  }

 function submitSong(event) {
   event.preventDefault();
   createsong($("#song_title").val());
   $("#song_title").val(null);
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
   $("form").bind('submit', submitSong);
   $(".delete-song").bind('click', deleteSong);
 });

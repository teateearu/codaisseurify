function createSong(title, year) {
  var artistId = $('ul').data('id');
  var newSong = { title: title, year: year };

  $.ajax({
    type: "POST",
    url: "/artists/" + artistId + "/songs.json",
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
          .append($('<td>').append($('<p>')).html(name))
          .append($('<td>').append($('<p>')).html(year))
          .append($('<td>').append($delBtn.bind('click', deleteSong )));

        $('#table').find($('tr')).first().after(tableRow);
      })
      .fail(function(error) {

        for (var key in error.responseJSON.errors ){
          showError(error.responseJSON.errors[key]);
        };

      });
  }

  function clearVals(name, year) {
    name.val(null);
    year.val(null);
  }

  function submitSong(event){
    event.preventDefault();
    resetErrors();
    var songName = $('#song-name');
    var songYear = $('#song-year');

    addSong(songName.val(), songYear.val());
    clearVals(songName, songYear);
  }

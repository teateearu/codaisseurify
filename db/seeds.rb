Photo.destroy_all
Artist.destroy_all
Song.destroy_all

artist1 = Artist.create( name: "Mariah Carey", alive: true, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_fill,g_face,h_200,w_200/v1510412105/1400-Mariah-Carey_nc9rjy.jpg" )
artist2 = Artist.create( name: "Frank Sinatra", alive: false, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_fill,g_face,h_200,w_200/v1510412251/6ac543c9bd357841e7c5eb1fcac6cc39--frank-sinatra-christmas-songs-christmas-music_wmmscx.jpg" )
artist3 = Artist.create( name: "Nat King Cole", alive: false, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_fill,g_face,h_200,w_200/v1510412122/maxresdefault_vbwyoz.jpg" )
artist4 = Artist.create( name: "Celine Dion", alive: true, remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_fill,g_face,h_200,w_200/v1510412265/cdn162009LARGE_vi6ll7.jpg" )

song1 = Song.create( title: "All I Want For Christmas Is You", year: 1994, artist: artist1 )
song2 = Song.create( title: "Hark! The Herald Angels Sing / Gloria (In Excelsis Deo)", year: 1994, artist: artist1 )
song3 = Song.create( title: "Have Yourself A Merry Little Christmas", year: 1947, artist: artist2 )
song4 = Song.create( title: "White Christmas", year: 1944, artist: artist2 )
song5 = Song.create( title: "The Christmas Song (Chestnuts Roasting On An Open Fire)", year: 1961, artist: artist3 )
song6 = Song.create( title: "Deck The Halls", year: 1960, artist: artist3 )
song7 = Song.create( title: "I'm Your Angel", year: 1998, artist: artist4 )
song8 = Song.create( title: "O Holy Night", year: 1998, artist: artist4 )

Artist.destroy_all
Song.destroy_all

artist1 = Artist.create( name: "Mariah Carey", bio: "Born March 27, 1969 or 1970. She is an American singer, songwriter, record producer, and actress." , remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_fill,g_face,h_200,w_378/v1510412105/1400-Mariah-Carey_nc9rjy.jpg" )
artist2 = Artist.create( name: "Frank Sinatra", bio: "Lived December 12, 1915 – May 14, 1998. He was an American singer, actor, and producer." , remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_fill,g_face,h_200,w_378/v1510412251/6ac543c9bd357841e7c5eb1fcac6cc39--frank-sinatra-christmas-songs-christmas-music_wmmscx.jpg" )
artist3 = Artist.create( name: "Nat King Cole", bio: "Lived March 17, 1919 – February 15, 1965. He was an American jazz pianist and vocalist.", remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_fill,g_face,h_200,w_378/v1510412122/maxresdefault_vbwyoz.jpg" )
artist4 = Artist.create( name: "Celine Dion", bio: "Born 30 March 1968. She is a Canadian singer and businesswoman." , remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_fill,g_face,h_200,w_378/v1510412265/cdn162009LARGE_vi6ll7.jpg" )
artist5 = Artist.create( name: "Michael Buble", bio: "Born 9 September 1975. He is a Canadian singer, songwriter, actor and record producer.", remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_fill,g_face,h_200,w_378/v1510492863/michaelbuble_vjx15y.jpg" )
artist6 = Artist.create( name: "Kenny G", bio: "Born June 5, 1956. He is an American saxophonist." , remote_image_url: "http://res.cloudinary.com/teateearu/image/upload/c_fill,g_west,h_200,w_378/v1510493358/maxresdefault_gocceg.jpg" )

song1 = Song.create( title: "All I Want For Christmas Is You", year: 1994, artist: artist1 )
song2 = Song.create( title: "Hark! The Herald Angels Sing / Gloria (In Excelsis Deo)", year: 1994, artist: artist1 )
song3 = Song.create( title: "Have Yourself A Merry Little Christmas", year: 1947, artist: artist2 )
song4 = Song.create( title: "White Christmas", year: 1944, artist: artist2 )
song5 = Song.create( title: "The Christmas Song (Chestnuts Roasting On An Open Fire)", year: 1961, artist: artist3 )
song6 = Song.create( title: "Deck The Halls", year: 1960, artist: artist3 )
song7 = Song.create( title: "I'm Your Angel", year: 1998, artist: artist4 )
song8 = Song.create( title: "O Holy Night", year: 1998, artist: artist4 )
song9 = Song.create( title: "It's Beginning To Look A Lot Like Christmas", year: 2011, artist: artist5 )
song10 = Song.create( title: "Let It Snow", year: 2003, artist: artist5 )
song11 = Song.create( title: "We Wish You A Merry Christmas", year: 2005, artist: artist6 )
song12 = Song.create( title: "Greensleeves (What Child Is This?)", year: 1994, artist: artist6 )

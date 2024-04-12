// You are developing a music streaming application. Define an abstract class MediaItem
// representing various media items such as songs, albums, and playlists. Implement concrete classes
// Song, Album, and Playlist that extend the MediaItem class. Additionally, create an interface Playable
// with a method play() that must be implemented by all media items.
// Create a Logger mixin that provides logging functionality to classes in your application. The Logger
// mixin should include methods for logging debug, info, warning, and error messages. Implement this
// mixin in various classes throughout your application to enable logging functionality wherever
// needed.


mixin Logger {
  void logDebug(String message) {
    print('DEBUG: $message');
  }

  void logInfo(String message) {
    print('INFO: $message');
  }

  void logWarning(String message) {
    print('WARNING: $message');
  }

  void logError(String message) {
    print('ERROR: $message');
  }
}

abstract class Playable {
  void play();
}

abstract class MediaItem with Logger implements Playable {
  late String title;
  late String artist;

  MediaItem(this.title, this.artist);
}

class Song extends MediaItem {
  late String genre;

  Song(String title, String artist, this.genre) : super(title, artist);

  @override
  void play() {
    logInfo('Playing song: $title by $artist ($genre)');
  }
}

class Album extends MediaItem {
  late List<Song> songs;

  Album(String title, String artist, this.songs) : super(title, artist);

  @override
  void play() {
    logInfo('Playing album: $title by $artist');
    for (var song in songs) {
      song.play();
    }
  }
}

class Playlist extends MediaItem {
  late List<MediaItem> items;

  Playlist(String title, String artist, this.items) : super(title, artist);

  @override
  void play() {
    logInfo('Playing playlist: $title by $artist');
    for (var item in items) {
      item.play();
    }
  }
}

// Example usage
void main() {
  var song1 = Song('Bohemian Rhapsody', 'Queen', 'Rock');
  var song2 = Song('Shape of You', 'Ed Sheeran', 'Pop');
  var album = Album('Greatest Hits', 'Queen', [song1, song2]);
  var playlist = Playlist('My Favorites', 'Various Artists', [song1, song2, album]);

  playlist.play();
}

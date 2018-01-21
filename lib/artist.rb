    class Artist
      attr_accessor :name, :songs
      @@all = []
      
      def initialize(name)
        @name = name
        @songs = []
      end
      
      def songs
        @songs
      end
<<<<<<< HEAD
      
      def self.find_or_create_by_name(name)
        self.find(name) ? self.find(name) : self.create(name)
      end
      
      def self.find(name)
        self.all.find {|artist| artist.name == name }
      end
      
      def self.create(name)
        self.new(name).tap {|artist| artist.save} #tap-Useful when wanting to call a single method on an object and keep working with the object afterwards
      end
=======
>>>>>>> 1d9033cdcef9e0256396c9bbdb504432fe346fd4
     
      def add_song(song)
        @songs << song
        song.artist = self
      end
      
      def add_song_by_name(name)
        song = Song.new(name)
        @songs << song
        song.artist = self
      end
      
      def save
        @@all << self
      end
      
      def self.all
        @@all    
      end
     
      def print_songs 
<<<<<<< HEAD
        songs.each {|song| puts song.name}
=======
        @songs
>>>>>>> 1d9033cdcef9e0256396c9bbdb504432fe346fd4
      end
    end
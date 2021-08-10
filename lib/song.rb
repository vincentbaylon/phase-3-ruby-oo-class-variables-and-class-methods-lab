require 'pry'

class Song
    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genres_histogram = Hash.new

        @@genres.each do |each_genre|
            if genres_histogram[each_genre]
                genres_histogram[each_genre] += 1
            else
                genres_histogram[each_genre] = 1
            end
        end
        return genres_histogram
    end

    def self.artist_count
        artists_histogram = Hash.new

        @@artists.each do |each_artist|
            if artists_histogram[each_artist]
                artists_histogram[each_artist] += 1
            else
                artists_histogram[each_artist] = 1
            end
        end
        return artists_histogram
    end
end

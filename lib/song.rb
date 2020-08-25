class Song

    attr_accessor :name , :artist , :genre 

    @@count=0
    @@genres=[]
    @@artists=[]

    def initialize (name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre 
        @@count +=1
        @@genres << genre 
        @@artists << artist 

    end 

    def self.count
        @@count 
    end 

    def self.genres
        @@genres.uniq
    end 

    def self.artists
        @@artists.uniq
    end 

    def self.genre_count
        result={}
        @@genres.each {|gen| result[gen]= (result[gen] || 0) + 1}
        result
    end

    def self.artist_count
        result={}
        @@artists.each do |art|
            result[art]= (result[art] || 0) + 1
        end 
        result
    end



end 
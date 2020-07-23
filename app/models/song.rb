class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist && self.artist.name 
    
    # artist ? artist.name : nil    
    
    # if artist 
    #   artist.name
    # else 
    #   nil
    # end
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

end

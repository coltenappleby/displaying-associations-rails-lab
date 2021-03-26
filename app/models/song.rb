class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    Artist.where(id: self.artist_id).first.name
  end
end

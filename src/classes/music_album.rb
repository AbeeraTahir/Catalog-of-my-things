require_relative '../item.rb'

class MusicAlbum < Item
  attr_accessor :on_spotify, :publish_date
  
  def initialize(on_spotify, publish_date)
    super(publish_date)
    @on_spotify = on_spotify
  end
end
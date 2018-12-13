class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  def self.create
    c = self.new
    c.save
    c
  end
  def self.destroy_all
    @@all = []
  end
end

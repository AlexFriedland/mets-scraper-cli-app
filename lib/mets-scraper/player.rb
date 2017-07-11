class MetsScraper::Player

  attr_accessor :name, :number, :bt, :height, :weight, :dob, :url, :pro, :debut, :college, :draft, :bio

  @@all = []

  def initialize(name, number, bt, height, weight, dob, url, pro = nil, debut=nil, college=nil, draft=nil, bio=nil)
    @name = name
    @number = number
    @bt = bt
    @height = height
    @weight = weight
    @dob = dob
    @url = url

    @pro = pro
    @debut = debut
    @college = college
    @draft = draft
    @bio = bio

    @@all << self
  end

  def self.all
    @@all
  end


  def self.player_info(url)

    doc = Nokogiri::HTML(open(url))

    pro = doc.search("div.container section#quick-stats div.player bio ul li span.label").text

    #scrape and add the new values to attributes
  end
end

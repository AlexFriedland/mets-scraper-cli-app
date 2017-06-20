require 'pry'

class MetsScraper::Scraper

  def self.get_page
    Nokogiri::HTML(open("http://m.mets.mlb.com/roster/"))
  end

  def self.pitchers
    self.get_page.css("section.module h4").text
  end

  def catchers
  end

  def infield
  end

  def outfield
  end

  def full_list
  end

end

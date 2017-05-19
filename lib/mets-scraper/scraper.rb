require 'pry'

class Scraper

  def self.get_page
    Nokogiri::HTML(open("http://m.mets.mlb.com/roster/"))
  end

  def self.get_players_by_position
    positions = self.get_page.css("section.module")
  end


end

require 'pry'

class Scraper

  def self.get_page
    Nokogiri::HTML(open("http://m.mets.mlb.com/roster/"))
  end

  def self.master
    positions = self.get_page.css("section.module")
  end

  def self.position_list
    self.master.each {|position|
      #add
    }
  end

end

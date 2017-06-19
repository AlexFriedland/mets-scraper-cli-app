require 'pry'

class MetsScraper::Scraper

  def self.get_page
    page = Nokogiri::HTML(open("http://m.mets.mlb.com/roster/"))
    binding.pry
  end

  def self.master_list
    self.get_page.css("section.module")
  end

  def self.position_list
    self.master_list.each {|position|
      #add
    }
  end

end

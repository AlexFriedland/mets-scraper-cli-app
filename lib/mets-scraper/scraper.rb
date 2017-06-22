require 'pry'

class MetsScraper::Scraper

  def self.get_page
    Nokogiri::HTML(open("http://m.mets.mlb.com/roster/"))
  end

  def self.pitchers
    get_page.css("section.module").each {|h4|
      if h4.text == "Pitchers"
        get_page.css("section.module").each { |player|
          name = get_page.css("td.dg-name_display_first_last a").text
          number = get_page.css("tr tg.dg-jersey_number").text
          bt = get_page.css("tr td.dg-bats_throws").text
          height = get_page.css("tr td.dg-height").text
          weight = get_page.css("tr td.dg-weight").text
          dob = get_page.css("tr td.dg-date_of_birth").text
          MetsScraper::Player.new(name, number, bt, height, weight, dob)
          puts ""
          binding.pry
            }
        #instantiate player and puts their information
      end
    }
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

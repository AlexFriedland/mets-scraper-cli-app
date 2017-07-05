require 'pry'

class MetsScraper::Scraper

  def self.get_page
    Nokogiri::HTML(open("http://m.mets.mlb.com/roster/"))
  end

  def self.get_players
    self.get_page.css("section.module")
  end


  def self.pitchers
    self.get_players.each {|section|
      puts section.css("h4").text
    }
  end



=begin
  def self.pitchers
    self.get_page.css("section.module").each {|h4|

      if self.get_page.css("section.module h4").text == "Pitchers"

        self.get_page.css("section.module tr").each { |player|

          name = player.css("td.dg-name_display_first_last a").text
          number = player.css("tr tg.dg-jersey_number").text
          bt = player.css("tr td.dg-bats_throws").text
          height = player.css("tr td.dg-height").text
          weight = player.css("tr td.dg-weight").text
          dob = player.css("tr td.dg-date_of_birth").text
          MetsScraper::Player.new(name, number, bt, height, weight, dob)
        }
      end
    }
  end
=end


  def catchers
  end

  def infield
  end

  def outfield
  end

  def full_list
  end

end

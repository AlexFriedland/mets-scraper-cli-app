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
      if section.css("h4").text == "Pitchers"
        players = section.css("tr")

        players.each {|player|
          name = player.css("td.dg-name_display_first_last a").text
          number = player.css("td.dg-jersey_number").text
          bt = player.css("td.dg-bats_throws").text
          height = player.css("td.dg-height").text
          weight = player.css("td.dg-weight").text
          dob = player.css("td.dg-date_of_birth").text
          MetsScraper::Player.new(name, number, bt, height, weight, dob)

          
          puts "

          Name: #{name}
          Number: #{number}
          Batting / Throwing: #{bt}
          Height: #{height}
          Weight: #{weight}
          Birthday: #{dob}"


        }
      end
    }

  end




  def catchers
    self.get_players.each {|section|
      if section.css("h4").text == "Catchers"
        players = section.css("tr")

        players.each {|player|
          name = player.css("td.dg-name_display_first_last a").text
          number = player.css("td.dg-jersey_number").text
          bt = player.css("td.dg-bats_throws").text
          height = player.css("td.dg-height").text
          weight = player.css("td.dg-weight").text
          dob = player.css("td.dg-date_of_birth").text
          MetsScraper::Player.new(name, number, bt, height, weight, dob)
        }
      end
    }

  end

  def infield
    self.get_players.each {|section|
      if section.css("h4").text == "Infield"
        players = section.css("tr")

        players.each {|player|
          name = player.css("td.dg-name_display_first_last a").text
          number = player.css("td.dg-jersey_number").text
          bt = player.css("td.dg-bats_throws").text
          height = player.css("td.dg-height").text
          weight = player.css("td.dg-weight").text
          dob = player.css("td.dg-date_of_birth").text
          MetsScraper::Player.new(name, number, bt, height, weight, dob)
        }
      end
    }

  end

  def outfield
    self.get_players.each {|section|
      if section.css("h4").text == "Outfield"
        players = section.css("tr")

        players.each {|player|
          name = player.css("td.dg-name_display_first_last a").text
          number = player.css("td.dg-jersey_number").text
          bt = player.css("td.dg-bats_throws").text
          height = player.css("td.dg-height").text
          weight = player.css("td.dg-weight").text
          dob = player.css("td.dg-date_of_birth").text
          MetsScraper::Player.new(name, number, bt, height, weight, dob)
        }
      end
    }

  end

  def full_list
  end

end

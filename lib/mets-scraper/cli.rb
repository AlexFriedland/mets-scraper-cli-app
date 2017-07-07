#CLI controller - user interaction. welcome, input etc.
require 'pry'

class MetsScraper::CLI

  #stub of our interface

  def call
    menu
  end

  def player_info
  end

  def menu
    puts "Welcome to the player roster of the New York Metropolitans.

    Which position would you like to view?

    1. Pitchers
    2. Catchers
    3. Infield
    4. Outfield
    5. Full Roster

    Type 'exit' to quit"


    input = gets.strip


    if input == "1"
      puts "PITCHERS OF THE NEW YORK METROPOLITANS

      "
      MetsScraper::Scraper.pitchers

      MetsScraper::Player.all.each {|player|
        puts "

        Name: #{player.name}
        Number: #{player.number}
        Batting / Throwing: #{player.bt}
        Height: #{player.height}
        Weight: #{player.weight}
        Birthday: #{player.dob}
        URL: #{player.url}
        "

      }


    elsif input == "2"
      puts "CATCHERS OF THE NEW YORK METROPOLITANS:

      "

      MetsScraper::Scraper.catchers

      MetsScraper::Player.all.each {|player|
        puts "

        Name: #{player.name}
        Number: #{player.number}
        Batting / Throwing: #{player.bt}
        Height: #{player.height}
        Weight: #{player.weight}
        Birthday: #{player.dob}"
      }

    elsif input == "3"
      puts "INFIELD OF THE NEW YORK METROPOLITANS:

      "
      MetsScraper::Scraper.infield

      MetsScraper::Player.all.each {|player|
        puts "

        Name: #{player.name}
        Number: #{player.number}
        Batting / Throwing: #{player.bt}
        Height: #{player.height}
        Weight: #{player.weight}
        Birthday: #{player.dob}"
      }

    elsif input == "4"
      puts "OUTFIELD OF THE NEW YORK METROPOLITANS:

      "
      MetsScraper::Scraper.outfield

      MetsScraper::Player.all.each {|player|
        puts "

        Name: #{player.name}
        Number: #{player.number}
        Batting / Throwing: #{player.bt}
        Height: #{player.height}
        Weight: #{player.weight}
        Birthday: #{player.dob}"
      }

    elsif input == "5"
      puts "FULL ROSTER OF THE NEW YORK METROPOLITANS

      "
      MetsScraper::Scraper.full_roster

      MetsScraper::Player.all.each {|player|
        puts "

        Name: #{player.name}
        Number: #{player.number}
        Batting / Throwing: #{player.bt}
        Height: #{player.height}
        Weight: #{player.weight}
        Birthday: #{player.dob}"
      }


    elsif input == "exit"
      abort("See you soon!")
    else
      puts "Sorry, I don't recognize that input."
      menu
    end
  end







  def list_pitchers
    MetsScraper::Scraper.get_players
    binding.pry
    puts "
    PITCHERS:
    "

    puts "To see more information for a player, enter their number:"

    number = gets.strip
  end

  def list_catchers

    puts "To see more information for a player, enter their number:"

    number = gets.strip
  end

  def list_outfield

    puts "To see more information for a player, enter their number:"

    number = gets.strip
  end

  def list_infield

    puts "To see more information for a player, enter their number:"

    number = gets.strip
  end




end


=begin

puts <<-DOC.gsub /^\*/, ''
Pitchers
#	 	Name	B/T	Ht	Wt	DOB
39		Jerry Blevins	L/L	6'6"	190lbs	9/6/83
48		Jacob deGrom	L/R	6'4"	180lbs	6/19/88
66		Josh Edgin	R/L	6'1"	245lbs	12/17/86
65		Robert Gsellman	R/R	6'4"	205lbs	7/18/93
33		Matt Harvey	R/R	6'4"	215lbs	3/27/89
67		Seth Lugo	R/R	6'4"	225lbs	11/17/89
32		Steven Matz	R/L	6'2"	200lbs	5/29/91
50		Rafael Montero	R/R	6'0"	185lbs	10/17/90
55		Neil Ramirez	R/R	6'4"	215lbs	5/25/89
43		Addison Reed	L/R	6'4"	230lbs	12/27/88
59		Fernando Salas	R/R	6'2"	200lbs	5/30/85
51		Paul Sewald	R/R	6'3"	205lbs	5/26/90
45		Zack Wheeler	L/R	6'4"	195lbs	5/30/90
Catchers
#	 	Name	B/T	Ht	Wt	DOB
18		Travis d'Arnaud	R/R	6'2"	210lbs	2/10/89
44		Rene Rivera	R/R	5'10"	215lbs	7/31/83
Infield
#	 	Name	B/T	Ht	Wt	DOB
2		Gavin Cecchini	R/R	6'2"	200lbs	12/22/93
21	Lucas Duda	L/R	6'4"	255lbs	2/3/86
4		Wilmer Flores	R/R	6'3"	205lbs	8/6/91
7		Jose Reyes	S/R	6'0"	195lbs	6/11/83
54	T.J. Rivera	R/R	6'1"	205lbs	10/27/88
Outfield
#	 	Name	B/T	Ht	Wt	DOB
19	Jay Bruce	L/L	6'3"	225lbs	4/3/87
52	Yoenis Cespedes	R/R	5'10"	220lbs	10/18/85
30	Michael Conforto	L/R	6'1"	215lbs	3/1/93
3		Curtis Granderson	L/R	6'1"	200lbs	3/16/81
12	Juan Lagares	R/R	6'1"	215lbs	3/17/89
DOC

=end

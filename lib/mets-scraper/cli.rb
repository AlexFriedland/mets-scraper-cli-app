#CLI controller - user interaction. welcome, input etc.

class MetsScraper::CLI

  #stub of our interface

  def call
    player_roster
    #MetsScraper.get_page
    #MetsScraper.make_list
    menu
  end

  def player_roster
    puts "Player Roster of the New York Metropolitans:"


    puts <<-DOC.gsub /^\*/, ''
    PITCHERS
NO.	NAME	POS	BAT	THW	AGE	HT	WT	BIRTH PLACE	SALARY
39	Jerry Blevins	RP	L	L	33	6-6	190	Johnson City, TN	N/A
48	Jacob deGrom	SP	L	R	28	6-4	180	Deland, FL	N/A
66	Josh Edgin	RP	R	L	30	6-1	246	Lewiston, PA	N/A
65	Robert Gsellman	SP	R	R	23	6-4	200	Santa Monica, CA	N/A
33	Matt Harvey	SP	R	R	28	6-4	217	New London, CT	N/A
56	Tyler Pill	SP	L	R	27	6-1	205	San Dimas, CA	N/A
55	Neil Ramirez	RP	R	R	28	6-4	215	Virginia Beach, VA	N/A
43	Addison Reed	RP	L	R	28	6-4	230	Montclair, CA	N/A
59	Fernando Salas	RP	R	R	32	6-2	200	Huatabampo, Mexico	N/A
51	Paul Sewald	RP	R	R	27	6-2	195	Las Vegas, NV	N/A
49	Josh Smoker	RP	L	L	28	6-2	195	Calhoun, GA	N/A
45	Zack Wheeler	SP	L	R	27	6-4	196	Smyrna, GA	N/A

CATCHERS
NO.	NAME	POS	BAT	THW	AGE	HT	WT	BIRTH PLACE	SALARY
18	Travis d'Arnaud	C	R	R	28	6-2	211	Long Beach, CA	N/A
44	Rene Rivera	C	R	R	33	5-10	215	Bayamon, Puerto Rico	N/A

INFIELDERS
NO.	NAME	POS	BAT	THW	AGE	HT	WT	BIRTH PLACE	SALARY
13	Asdrubal Cabrera	SS	B	R	31	6-0	205	Puerto La Cruz, Venezuela	N/A
21	Lucas Duda	1B	L	R	31	6-4	256	Riverside, CA	N/A
4	Wilmer Flores	3B	R	R	25	6-3	203	Valencia, Venezuela	N/A
7	Jose Reyes	3B	B	R	33	6-0	195	Villa Gonzalez, Dominican Republic	N/A
15	Matt Reynolds	SS	R	R	26	6-1	205	Tulsa, OK	N/A
54	T.J. Rivera	1B	R	R	28	6-1	205	Bronx, NY	N/A
20	Neil Walker	2B	B	R	31	6-3	210	Pittsburgh, PA	N/A

OUTFIELDERS
NO.	NAME	POS	BAT	THW	AGE	HT	WT	BIRTH PLACE	SALARY

19	Jay Bruce	RF	L	L	30	6-3	227	Beaumont, TX	N/A
30	Michael Conforto	LF	L	R	24	6-1	215	Seattle, WA	N/A
3	  Curtis Granderson	CF	L	R	36	6-1	199	Blue Island, IL	N/A
12	Juan Lagares	CF	R	R	28	6-1	215	Constanza, Dominican Republic	N/A

DISABLED LIST

NO.	NAME	           POS	BAT	THW	AGE	HT	WT	BIRTH PLACE	SALARY

52	Yoenis Cespedes  DL10	LF	R	R	31	5-10	220	Campechuela, Cuba	N/A
27	Jeurys Familia   DL60	RP	R	R	27	6-3	242	Santo Domingo, Dominican Republic	N/A
67	Seth Lugo        DL60	RP	R	R	27	6-4	205	Shreveport, LA	N/A
32	Steven Matz      DL10	SP	R	L	26	6-2	201	Stony Brook, NY	N/A
29	Tommy Milone     DL10	SP	L	L	30	6-0	215	Grenada Hills, CA	N/A
34	Noah Syndergaard DL60	SP	L	R	24	6-6	242	Mansfield, TX	N/A
5	  David Wright     DL60	3B	R	R	34	6-0	206	Norfolk, VA	N/A

MINORS
NO.	NAME	           POS	BAT	THW	AGE	HT	WT	BIRTH PLACE	SALARY
--	Wuilmer Becerra	 RF	R	R	22	6-3	225	Caracas, Venezuela	N/A
--	Gavin Cecchini	 SS	R	R	23	6-2	200	Lake Charles, LA	N/A
--	Chris Flexen	   RP	R	R	22	6-3	230	Newark, CA	N/A
--	Sean Gilmartin	 RP	L	L	27	6-2	205	Thousand Oaks, CA	N/A
--	Erik Goeddel	   RP	R	R	28	6-3	185	San Mateo, CA	N/A
--	Marcos Molina	   SP	R	R	22	6-3	188	Santiago, Dominican Republic	N/A
--	Rafael Montero	 RP	R	R	26	6-0	200	Higuerito, Dominican Republic	N/A
--	Tomas Nido	     C	R	R	23	6-0	211	San Juan, FL	N/A
--	Brandon Nimmo	   LF	L	R	24	6-3	206	Cheyenne, WY	N/A
--	Kevin Plawecki	 C	R	R	26	6-2	224	Carmel, IN	N/A
--	Hansel Robles	   RP	R	R	26	5-11	185	Bonao, Dominican Republic	N/A
--	Amed Rosario	   SS	R	R	21	6-2	190	Santo Domingo Centro, Dominican Republic	N/A
    DOC
  end

  def menu
    puts "Press 1 to view the roster by players, press 2 to view by position. Type 'exit' to quit:"

    input = gets.strip

    if input == "1"
      puts "ROSTER BY PLAYER"
      player_roster #by player
    elsif input == "2"
      puts "ROSTER BY POSITION"
      player_roster #by position      
    else
      menu
    end
=begin
    while input != exit
      puts "Press 1 to view the roster by players, press 2 to view by position:"

      case input
      when "1"
        puts "ROSTER BY PLAYER"
      when "2"
        puts "LIST BY POSITION"
      when "exit"
        puts "I reckon you'll be back before long."
      end
    end
=end
  end



end

#environment file that loads dependencies

module MetsScraper

end

require 'nokogiri'
require 'open-uri'
require 'pry'



require_relative "./mets-scraper/cli"
require_relative "./mets-scraper/player"
require_relative "./mets-scraper/position"
require_relative "./mets-scraper/scraper"
require_relative "./mets-scraper/version"

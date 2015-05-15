require 'nokogiri'
require 'open-uri'

class ShakespeareReader
  attr_reader :contents

  def initialize(url)
    @url = url
  end

  def call
    @contents = Nokogiri::HTML(open(@url))
  end
end

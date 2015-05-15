require 'nokogiri'
require 'pry'

class ShakespeareParser
  def initialize(contents)
    @contents = contents
  end

  def call
    speaker_lines = Hash.new 0

    @contents.xpath('//speech').each do |speach|
      speach.xpath('speaker').each do |speaker|
        lines = speach.xpath('line')

        speaker_lines[speaker.text] += lines.length
      end
    end
    speaker_lines.reject { |k, v| k == 'ALL' }
  end
end

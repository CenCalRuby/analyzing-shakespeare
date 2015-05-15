require_relative 'lib/shakespeare_formatter'
require_relative 'lib/shakespeare_parser'
require_relative 'lib/shakespeare_reader'

reader = ShakespeareReader
  .new('http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml')
reader.call

parser = ShakespeareParser.new(reader.contents)
formatter = ShakespeareFormatter.new(parser.call)

puts formatter.call

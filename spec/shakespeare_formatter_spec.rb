require 'spec_helper'
require_relative '../lib/shakespeare_formatter'
require_relative '../lib/shakespeare_parser'
require_relative '../lib/shakespeare_reader'

RSpec.describe ShakespeareFormatter, :type => :model do

  it 'should should all speakers line count' do
    reader = ShakespeareReader
      .new('http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml')
    reader.call

    parser = ShakespeareParser.new(reader.contents)
    formatter = ShakespeareFormatter.new(parser.call)

    expect(formatter.call).not_to be_nil

    puts formatter.call
  end
end

require 'spec_helper'
require_relative '../lib/shakespeare_parser'
require_relative '../lib/shakespeare_reader'

RSpec.describe ShakespeareParser, :type => :model do
  it 'should count the speakers' do
    reader = ShakespeareReader
      .new('http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml')
    reader.call

    parser = ShakespeareParser.new(reader.contents)

    expect(parser.call['MACBETH']).to eq(719)
  end
end

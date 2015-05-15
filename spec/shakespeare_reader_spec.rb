require 'spec_helper'

RSpec.describe ShakespeareReader, :type => :model do

  context 'when the url is valid' do
    it 'should download xml file' do
      reader = ShakespeareReader
        .new('http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml')

      reader.call
      
      expect(reader.contents).not_to be_nil
    end
  end

  context 'when the url is not valid' do
    it 'should raise an error' do
      reader = ShakespeareReader
        .new('notvalid')

      expect { reader.call }.to raise_error
    end
  end
end

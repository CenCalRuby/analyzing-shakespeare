class ShakespeareFormatter
  attr_reader :output

  def initialize(speaker_lines)
    @speaker_lines = speaker_lines
  end

  def call
    output = ""
    @speaker_lines.each do |speaker, lines|
      output += "#{lines}\t#{speaker}\n"
    end
    output
  end
end

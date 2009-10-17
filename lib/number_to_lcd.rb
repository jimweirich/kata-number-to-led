class LcdConverter
  SEGMENTS = Hash.new { |h, k| h[k] = [] }
  [
    " - ,   , - , - ,   , - , - , - , - , - ",
    "| |,  |,  |,  |,| |,|  ,|  ,  |,| |,| |",
    "   ,   , - , - , - , - , - ,   , - , - ",
    "| |,  |,|  ,  |,  |,  |,| |,  |,| |,  |",
    " - ,   , - , - ,   , - , - ,   , - , - ",
  ].each do |string|
    string.split(',').each_with_index do |segment, i|
      SEGMENTS[i] << segment
    end
  end

  def digit_segments(digit)
    SEGMENTS[digit]
  end

  def digits_for(number)
    result = []
    begin
      result << number % 10
      number /= 10
    end while number > 0
    result.reverse
  end

  def join_segments(digit_segments)
    head, *tail = digit_segments
    head.zip(*tail).map { |pair| pair.join(" ") }.join("\n")
  end

  def convert(number)
    digit_segments = digits_for(number).map { |d| digit_segments(d) }
    join_segments(digit_segments) + "\n"
  end
end

NumberToLcd = LcdConverter.new

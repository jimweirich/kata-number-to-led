class LcdConverter
  SEGMENTS = {}

  [
    " - ,   , - , - ,   , - , - , - , - , - ",
    "| |,  |,  |,  |,| |,|  ,|  ,  |,| |,| |",
    "   ,   , - , - , - , - , - ,   , - , - ",
    "| |,  |,|  ,  |,  |,  |,| |,  |,| |,  |",
    " - ,   , - , - ,   , - , - ,   , - , - ",
  ].each do |string|
    string.split(",").each_with_index do |seg, i|
      SEGMENTS[i] ||= []
      SEGMENTS[i] << seg
    end
  end

  # STEP 18 -- Refactor.  I'm happy with the code at this point.  I
  # find the overly long hash initialization a bit annoying.  By
  # lightly encoding the segment definitions, we can dynamically
  # extract them to initialize the hash.  As a benefit, the encoded
  # segments are quite easy to visually verify without scrolling
  # through multiple pages.
  #
  # It was a bit tedious to encode the segments, but a simple on the
  # fly emacs macro made the translation very painless.

  def digits_for(n)
    result = []
    begin
      result.unshift(n % 10)
      n /= 10
    end while n > 0
    result
  end

  def digits_segments(digit)
    SEGMENTS[digit]
  end
  
  def merge_segments(segment_list)
    head, *tail = segment_list
    head.zip(*tail).map { |segs| segs.join(' ') }
  end

  def join_lines(lines)
    lines.map { |seg| "#{seg}\n" }.join
  end

  def convert(number)
    segments = digits_for(number).map { |d| digits_segments(d) }
    join_lines(merge_segments(segments))
  end
end

NumberToLcd = LcdConverter.new

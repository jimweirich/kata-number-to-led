class LcdConverter
  SEGMENTS = Hash.new { |h, k| h[k] = [] }

  [
    " - ,   , - , - ,   , - , - , - , - , - ",
    "| |,  |,  |,  |,| |,|  ,|  ,  |,| |,| |",
    "   ,   , - , - , - , - , - ,   , - , - ",
    "| |,  |,|  ,  |,  |,  |,| |,  |,| |,  |",
    " - ,   , - , - ,   , - , - ,   , - , - ",
  ].each do |string|
    string.split(",").each_with_index do |seg, i|
      SEGMENTS[i] << seg
    end
  end

  # STEP 19 -- Refactor.  Initializing the SEGMENTS with ||= on each
  # loop thru is annoying.  Let's fix that by changing the hash
  # definition.

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

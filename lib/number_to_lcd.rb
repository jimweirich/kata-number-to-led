class LcdConverter
  SEGMENTS = {
    1 => [
      "   ",
      "  |",
      "   ",
      "  |",
      "   ",
    ],
    2 => [
      " - ",
      "  |",
      " - ",
      "|  ",
      " - ",
    ],
    3 => [
      " - ",
      "  |",
      " - ",
      "  |",
      " - ",
    ],
    4 => [
      "   ",
      "| |",
      " - ",
      "  |",
      "   ",
    ],
    5 => [
      " - ",
      "|  ",
      " - ",
      "  |",
      " - ",
    ],
    6 => [
      " - ",
      "|  ",
      " - ",
      "| |",
      " - ",
    ],
    7 => [
      " - ",
      "  |",
      "   ",
      "  |",
      "   ",
    ],
    8 => [
      " - ",
      "| |",
      " - ",
      "| |",
      " - ",
    ],
    9 => [
      " - ",
      "| |",
      " - ",
      "  |",
      " - ",
    ],
    0 => [
      " - ",
      "| |",
      "   ",
      "| |",
      " - ",
    ],
  }

  # STEP 14 -- Refactor.  Extract method digits_for.

  def digits_for(n)
    result = []
    while n > 0
      result.unshift(n % 10)
      n /= 10
    end
    result
  end

  def digits_segments(digit)
    SEGMENTS[digit]
  end
  
  def merge_segments(segment_list)
    head, *tail = segment_list
    head.zip(*tail).map { |segs| segs.join(' ') }
  end

  def convert(number)
    if number < 10
      digits_segments(number).map { |seg| "#{seg}\n" }.join
    else
      segments = digits_for(number).map { |d| digits_segments(d) }
      merged_segments = merge_segments(segments)
      merged_segments.map { |seg| "#{seg}\n" }.join
    end
  end
end

NumberToLcd = LcdConverter.new

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

  # STEP 12 -- Implement 345.  Getting individual hi/lo digits won't
  # work so we need to pull individual digits in a loop.

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
      digits = []
      while number > 0
        digits.unshift(number % 10)
        number /= 10
      end
      segments = digits.map { |d| digits_segments(d) }
      merged_segments = merge_segments(segments)
      merged_segments.map { |seg| "#{seg}\n" }.join
    end
  end
end

NumberToLcd = LcdConverter.new

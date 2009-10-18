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

  # STEP 11 -- Refactor.  Extract method merge_segments.

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
      lo = digits_segments(number % 10)
      hi = digits_segments((number/10) % 10)
      merged_segments = merge_segments([hi, lo])
      merged_segments.map { |seg| "#{seg}\n" }.join
    end
  end
end

NumberToLcd = LcdConverter.new

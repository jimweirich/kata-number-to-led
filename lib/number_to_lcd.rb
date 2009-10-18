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

  # STEP 10 -- Lots of opportunity for refactoring.  First extract a
  # digits_segments method.

  def digits_segments(digit)
    SEGMENTS[digit]
  end
  
  def convert(number)
    if number < 10
      digits_segments(number).map { |seg| "#{seg}\n" }.join
    else
      lo = digits_segments(number % 10)
      hi = digits_segments((number/10) % 10)
      grouped_segments = hi.zip(lo)
      joined_segments = grouped_segments.map { |segs| segs.join(' ') }
      joined_segments.map { |seg| "#{seg}\n" }.join
    end
  end
end

NumberToLcd = LcdConverter.new

class LcdConverter
  # STEP 9 -- Implement 12.  Get the high and lo digits, then get the
  # segments for each.  Figuring out how to join the segments took
  # some fiddling, but the tests faithfully report when everything is
  # ok.
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

  def convert(number)
    if number < 10
      SEGMENTS[number].map { |seg| "#{seg}\n" }.join
    else
      lo = SEGMENTS[number % 10]
      hi = SEGMENTS[(number/10) % 10]
      grouped_segments = hi.zip(lo)
      joined_segments = grouped_segments.map { |segs| segs.join(' ') }
      joined_segments.map { |seg| "#{seg}\n" }.join
    end
  end
end

NumberToLcd = LcdConverter.new

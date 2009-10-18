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

  # STEP 16 -- Shouldn't need test for < 10 in convert anymore.  In
  # removing test, we discover a bug in digits_for that is easily
  # fixed by changing the while loop into an do/while loop.

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

  def convert(number)
    segments = digits_for(number).map { |d| digits_segments(d) }
    merge_segments(segments).map { |seg| "#{seg}\n" }.join
  end
end

NumberToLcd = LcdConverter.new

class LcdConverter
  # STEP 7 -- More refactoring.  The if statement isn't going to
  # scale.  I could go to a case statement, but I think I will jump
  # directly a hash for the digit segments.
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
    ]
  }

  def convert(number)
    SEGMENTS[number].map { |seg| "#{seg}\n" }.join
  end
end

NumberToLcd = LcdConverter.new

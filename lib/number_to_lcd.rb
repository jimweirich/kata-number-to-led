class LcdConverter
  # STEP 6 -- Another Refactor.  Change concatentated strings to
  # arrays, removing new lines so they can be applied later.
  def convert(number)
    segments = if number == 1
      [
        "   ",
        "  |",
        "   ",
        "  |",
        "   ",
      ]
    else
      [
        " - ",
        "  |",
        " - ",
        "|  ",
        " - ",
      ]
    end
    segments.map { |seg| "#{seg}\n" }.join
  end
end

NumberToLcd = LcdConverter.new

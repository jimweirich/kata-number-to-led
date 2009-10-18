class LcdConverter
  # STEP 4 -- Implement two.  Use a simple if test.
  def convert(this_number)
    if this_number == 1
      "   \n" +
        "  |\n" +
        "   \n" +
        "  |\n" +
        "   \n" 
    else
      " - \n" +
        "  |\n" +
        " - \n" +
        "|  \n" +
        " - \n" 
    end
  end
end

NumberToLcd = LcdConverter.new

class LcdConverter
  # STEP 5 -- Refactor.  Rename this_number -> number.
  def convert(number)
    if number == 1
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

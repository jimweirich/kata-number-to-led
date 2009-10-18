class LcdConverter
  # STEP 3 -- First refactor.  Change convert to an instance method (I
  # really don't like using class methods for non-class related
  # activities).
  def convert(this_number)
    "   \n" +
      "  |\n" +
      "   \n" +
      "  |\n" +
      "   \n" 
  end
end

NumberToLcd = LcdConverter.new

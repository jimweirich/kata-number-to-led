require 'rubygems'
require 'given/test_unit'
require 'number_to_lcd'

class NumberToLcdTest < Given::TestCase
  def convert(n)
    NumberToLcd.convert(n)
  end

  Given do
    Then { expect(convert(1)) == LCD_ONE }
    Then { expect(convert(2)) == LCD_TWO }
    Then { expect(convert(3)) == LCD_THREE }
    Then { expect(convert(4)) == LCD_FOUR }
    Then { expect(convert(5)) == LCD_FIVE }
    Then { expect(convert(6)) == LCD_SIX }
    Then { expect(convert(7)) == LCD_SEVEN }
    Then { expect(convert(8)) == LCD_EIGHT }
    Then { expect(convert(9)) == LCD_NINE }
    Then { expect(convert(0)) == LCD_ZERO }
    Then { expect(convert(12)) == LCD_TWELVE }
    Then { expect(convert(345)) == LCD_345 }
    Then { expect(convert(67890)) == LCD_67890 }
  end

  LCD_ONE = <<LCD
   
  |
   
  |
   
LCD
  LCD_TWO = <<LCD
 - 
  |
 - 
|  
 - 
LCD
  LCD_THREE = <<LCD
 - 
  |
 - 
  |
 - 
LCD
  LCD_FOUR = <<LCD
   
| |
 - 
  |
   
LCD
  LCD_FIVE = <<LCD
 - 
|  
 - 
  |
 - 
LCD
  LCD_SIX = <<LCD
 - 
|  
 - 
| |
 - 
LCD
  LCD_SEVEN = <<LCD
 - 
  |
   
  |
   
LCD
  LCD_EIGHT = <<LCD
 - 
| |
 - 
| |
 - 
LCD
  LCD_NINE = <<LCD
 - 
| |
 - 
  |
 - 
LCD
  LCD_ZERO = <<LCD
 - 
| |
   
| |
 - 
LCD
  LCD_TWELVE= <<LCD
     - 
  |   |
     - 
  | |  
     - 
LCD
  LCD_345= <<LCD
 -       - 
  | | | |  
 -   -   - 
  |   |   |
 -       - 
LCD
  LCD_67890 = <<LCD
 -   -   -   -   - 
|     | | | | | | |
 -       -   -     
| |   | | |   | | |
 -       -   -   - 
LCD
end

require 'rubygems'
require 'given/test_unit'
require 'number_to_lcd'

class NumberToLcdTest < Given::TestCase
  Given do
    Then { expect(NumberToLcd.convert(1)) == LCD_ONE }
    Then { expect(NumberToLcd.convert(2)) == LCD_TWO }
    Then { expect(NumberToLcd.convert(3)) == LCD_THREE }
    Then { expect(NumberToLcd.convert(4)) == LCD_FOUR }
    Then { expect(NumberToLcd.convert(5)) == LCD_FIVE }
    Then { expect(NumberToLcd.convert(6)) == LCD_SIX }
    Then { expect(NumberToLcd.convert(7)) == LCD_SEVEN }
    Then { expect(NumberToLcd.convert(8)) == LCD_EIGHT }
    Then { expect(NumberToLcd.convert(9)) == LCD_NINE }
    Then { expect(NumberToLcd.convert(0)) == LCD_ZERO }
    Then { expect(NumberToLcd.convert(12)) == LCD_TWELVE }
    Then { expect(NumberToLcd.convert(345)) == LCD_345 }
    Then { expect(NumberToLcd.convert(67890)) == LCD_67890 }
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

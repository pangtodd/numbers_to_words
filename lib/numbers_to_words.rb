require('pry') 

class Numbers_translator
  SINGLE_DIGITS= {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
  def numbers_in_english(user_number)
    SINGLE_DIGITS.fetch(user_number)
  end
end
require('pry') 

class Numbers_translator
  SINGLE_DIGITS= {0=>"",1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
  
  TEENS = {10=>"ten", 11=>"eleven", 12=>"tweleve", 13=>"thirteen",14=>"fourteen", 15=>"fifteen",16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"ninteen"}
  
  DECAS = {2=>"twenty", 3=>"thirty", 4=>"fourty", 5=>"fifty", 6=>"sixty",7=>"seventy", 8=> "eighty", 9=>"ninety"}
  
  def numbers_in_english(user_number)
    if user_number<10
      SINGLE_DIGITS.fetch(user_number)
    else
      TEENS.fetch(user_number)
    end
  end
end

# reverse user_number
# if user_number[1]==1
#   teens.fetch.(user_number[1].concat(user_number[0])
# else
#   deca.fetch(user_number[1])+single_digit.fetch(user_number[0])
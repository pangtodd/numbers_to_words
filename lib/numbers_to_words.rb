require('pry') 

class Numbers_translator
  SINGLE_DIGITS= {"nil" =>"", "0"=>"","1"=>"one", "2"=>"two", "3"=>"three", "4"=>"four", "5"=>"five", "6"=>"six", "7"=>"seven", "8"=>"eight", "9"=>"nine"}
  
  TEENS = {"10"=>"ten", "11"=>"eleven", "12"=>"tweleve", "13"=>"thirteen","14"=>"fourteen", "15"=>"fifteen","16"=>"sixteen", "17"=>"seventeen", "18"=>"eighteen", "19"=>"nineteen"}
  
  DECAS = {"2"=>"twenty", "3"=>"thirty", "4"=>"fourty", "5"=>"fifty", "6"=>"sixty","7"=>"seventy", "8"=>"eighty", "9"=>"ninety"}
  
  def numbers_in_english(user_number)
    string_number = user_number.to_s
    ones = SINGLE_DIGITS.fetch(string_number[-1])
    # tens = DECAS.fetch(string_number[-2])
    # hundreds = "#{SINGLE_DIGITS.fetch(string_number[-3])} hundred"
    
    if user_number<10
      "#{ones}"
    elsif user_number<20
      "#{TEENS.fetch(string_number.slice(-2..))}"
    elsif user_number<100
      "#{DECAS.fetch(string_number[-2])}-#{ones}"
    elsif user_number<999 && (string_number[-2]) == "1"
      "#{SINGLE_DIGITS.fetch(string_number[-3])} hundred #{TEENS.fetch(string_number.slice(-2..))}"
    elsif user_number<999
      "#{SINGLE_DIGITS.fetch(string_number[-3])} hundred #{DECAS.fetch(string_number[-2])}-#{ones}"
    
    # elsif user_number<100
    #   (DECAS.fetch(string_number[0]))+"-"+(SINGLE_DIGITS.fetch(string_number[1]))
    # elsif user_number<1000
    # ()
    end
  end
end

# reverse user_number
# if user_number[1]==1
#   teens.fetch.(user_number[1].concat(user_number[0])
# else
#   deca.fetch(user_number[1])+single_digit.fetch(user_number[0])
# 1,000,000,000 = 10 digits
# ones
# tens
# hundreds
# thousands
#   ten thousand
   # hundred thousand
# Millions
    #ten Million
    #hundred million
# Billion

require('pry') 

class Numbers_translator
  SINGLE_DIGITS= {0=>"",1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
  TEENS = {10=>S"ten", 11=>"eleven", 12=>"tweleve", 13=>"thirteen",14=>"fourteen", 15=>"fifteen",16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"ninteen"}
  DECAS = {2=>"twenty", 3=>"thirty", 4=>"fourty", 5=>"fifty", 6=>"sixty",7=>"seventy" 8= "eighty", 9=>"ninety"}GIT 
  def numbers_in_english(user_number)
    SINGLE_DIGITS.fetch(user_number)
  end
end



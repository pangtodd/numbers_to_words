require('rspec')
require('numbers_to_words')

describe(Numbers_translator)do
  describe('#numbers_in_english') do
    it("takes a single-digit number and returns it in english") do
      test = Numbers_translator.new
      expect(test.numbers_in_english(9)).to eq("nine")
    end
    it("takes a teen number and returns it in english") do
      test = Numbers_translator.new
      expect(test.numbers_in_english(17)).to eq("seventeen")
    end
      it("takes a number 20-99 and returns it in english") do
      test = Numbers_translator.new
      expect(test.numbers_in_english(22)).to eq("twenty-two")
    end
    it("takes a number 100-119 and returns it in english") do
      test = Numbers_translator.new
      expect(test.numbers_in_english(119)).to eq("nine hundred nineteen")
    end
    it("takes a number 120-200 and returns it in english") do
      test = Numbers_translator.new
      expect(test.numbers_in_english(199)).to eq("one hundred ninety-nine")
    end
  end
end
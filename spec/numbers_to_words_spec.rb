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
    it("takes a number 100-999 with 'teen' numbers and returns it in english") do
      test = Numbers_translator.new
      expect(test.numbers_in_english(319)).to eq("three hundred nineteen")
    end
    it("takes a number 100-999 with non-'teen' numbers and returns it in english") do
      test = Numbers_translator.new
      expect(test.numbers_in_english(699)).to eq("six hundred ninety-nine")
    end
    it("takes a number 1000-9999 with'teen' numbers and returns it in english") do
      test = Numbers_translator.new
      expect(test.numbers_in_english(9319)).to eq("nine thousand three hundred nineteen")
    end
  end
end
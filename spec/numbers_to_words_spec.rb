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
end
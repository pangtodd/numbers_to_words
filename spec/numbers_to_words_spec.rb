require('rspec')
require('numbers_to_words')

describe(Numbers_translator)do
  describe('#numbers_in_english') do
    it("takes a number and returns it in english") do
      test = Numbers_translator.new
      expect(test.numbers_in_english(8)).to eq("nine")
    end
  end
end
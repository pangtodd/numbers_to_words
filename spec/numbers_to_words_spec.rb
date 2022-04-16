require('rspec')
require('numbers_to_words')

describe(Numbers_translator)do
  describe('#reverse') do
    it("takes a number and makes it into an array") do
      test = Numbers_translator.new
      expect(test.reverse(12)).to eq([1,2])
    end
  end
end
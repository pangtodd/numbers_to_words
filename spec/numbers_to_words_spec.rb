require('rspec')
require('numbers_to_words')

describe('#reverse') do
  it("takes a number and makes it into an array") do
    expect(reverse(2)).to eq([2])
  end
end
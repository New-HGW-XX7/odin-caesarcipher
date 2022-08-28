require './caesar_cipher.rb'

describe "#encode_with_sub" do
  it "outputs a string different to input" do
    expect(encode_with_sub('hi', 2)).not_to eql('hi')
  end

  it "shifts correctly" do
    expect(encode_with_sub('hi', 2)).to eql('jk')
  end

  it "can can deal with shifting beyond 'z'" do
    expect(encode_with_sub('yz', 2)).to eql('ab')
  end

  it "forbids shiftnumber below 1" do
    expect(encode_with_sub('abc', 0)).not_to eql('*')
  end

  it "forbids shiftnumber above 25" do
    expect(encode_with_sub('abc', 26)).not_to eql('*')
  end

  it "can handle capitalization" do
    expect(encode_with_sub('hI', 2)).to eql('jK')
  end
end
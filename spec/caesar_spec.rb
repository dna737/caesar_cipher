#Test cases for caesar cipher

require_relative "../lib/cipher.rb"

describe "Caesar Cipher tests" do
  it "aaaa with -1 shift" do
    expect(caesar_cipher("aaaa", -1)).to eql("zzzz")
  end

  it "esdf with 27 shifts" do
    expect(caesar_cipher("esdf", 27)).to eql("fteg")
  end

  it "pppp with 10218 shifts" do
    expect(caesar_cipher("pppp", 10218)).to eql("pppp")
  end

  it "polo with 0 shifts" do
    expect(caesar_cipher("polo", 0)).to eql("polo")
  end
end
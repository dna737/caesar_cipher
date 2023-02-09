#Test cases for caesar cipher

require_relative "../lib/cipher.rb"

describe "Caesar Cipher tests" do
  it "aaaa with -1 shift:" do
    expect(caesar_cipher("aaaa", -1)).to eql("zzzz")
  end
end
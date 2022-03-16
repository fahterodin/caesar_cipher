require './lib/caesar_cipher.rb'

describe "#control_ascii_low" do
  it "returns a number between 97 and 122 adding or subtracting 26 to the given number" do
    expect(control_ascii_low(50)).to eql(102)
    expect(control_ascii_low(150)).to eql(98)
  end
end

describe "#control_ascii_high" do
  it "returns a number between 65 and 90 adding or subtracting 26 to the given number" do
    expect(control_ascii_high(50)).to eql(76)
    expect(control_ascii_high(150)).to eql(72)
  end
end

describe "#caesar_cipher" do
  it "that takes in a string and the shift factor and then outputs the modified string" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end

  it "takes big shift factor" do
    expect(caesar_cipher("Hello world!", 500)).to eql("Nkrru cuxrj!")
  end

  it "takes negative shift factor" do
    expect(caesar_cipher("Bingo bongo?", -50)).to eql("Dkpiq dqpiq?")
  end
end

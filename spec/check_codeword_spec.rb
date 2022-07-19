require "check_codeword"

RSpec.describe "check codeword method" do
  it "returns a correct message for the right codeword" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "returns a wrong message for the wrong codeword" do
    result = check_codeword("chicken")
    expect(result).to eq "WRONG!"
  end

  it "returns a close message for a close enough codeword" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end
end

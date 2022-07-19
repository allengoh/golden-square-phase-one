require "report_length"

RSpec.describe "length of a word" do 
  it "returns how many characters there are in the word" do
    result = report_length("allen")
    expect(result).to eq "This string was 5 characters long."
  end
end

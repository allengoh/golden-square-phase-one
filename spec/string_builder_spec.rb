require "string_builder"


RSpec.describe StringBuilder do

  it "initially returns an empty string as output" do
    string = StringBuilder.new
    expect(string.output).to eq ""
  end
  
  it "initially returns a size of 0" do
    string = StringBuilder.new
    expect(string.size).to eq 0
  end

  it "outputs that string" do
    string = StringBuilder.new
    string.add("hello")
    string.add("world")
    expect(string.output).to eq "helloworld"
  end

  it "has a size of that string's length" do
    string = StringBuilder.new
    string.add("hello")
    string.add("world")
    expect(string.size).to eq 10
  end
end


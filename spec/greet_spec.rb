require "greet"

RSpec. describe "greet method" do 
  it "greets a person when given a name" do
    expect(greet("Allen")).to eq "Hello Allen!"
  end
end

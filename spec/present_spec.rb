require "present"

RSpec.describe Present do
  it "fails when there are contents given as an argument" do
    present = Present.new()
    present.wrap("allen")
    expect {present.wrap("brijesh")}.to raise_error "A contents has already been wrapped."
  end

  it "fails when there are no contents given as an argument" do
    present = Present.new()
    expect {present.unwrap()}.to raise_error "No contents have been wrapped."
  end

  
end
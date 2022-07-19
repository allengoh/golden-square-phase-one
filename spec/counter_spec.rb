require "counter"

RSpec.describe Counter do
  it "adds 5 to the counter and reports it" do 
    counter = Counter.new
    counter.add(5)
    result = counter.report()
    expect(result).to eq "Counted to 5 so far."
  end

  it "adds 7 to the counter and reports it" do
    counter = Counter.new
    counter.add(7)
    result = counter.report()
    expect(result).to eq "Counted to 7 so far."
  end

  it "adds 9 to the counter and reports it" do
    counter = Counter.new
    counter.add(9)
    result = counter.report()
    expect(result).to eq "Counted to 9 so far."
  end
  
end



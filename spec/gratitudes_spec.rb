require "gratitudes"

RSpec.describe Gratitudes do

  it "returns an empty array when first created" do
    gratitudes = Gratitudes.new
    expect(gratitudes.format).to eq "Be grateful for: "
  end

  it "adds an array of gratitudes" do
    gratitudes = Gratitudes.new
    gratitudes.add("Health")
    gratitudes.add("Happiness")
    gratitudes.add("Freedom")
    expect(gratitudes.format).to eq "Be grateful for: Health, Happiness, Freedom"
  end
end
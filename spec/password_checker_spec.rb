require "password_checker"

RSpec.describe PasswordChecker do
  it "fails if password is less than 8 characters" do
    result = PasswordChecker.new()
    expect {result.check("allen")}.to raise_error "Invalid password, must be 8+ characters."
  end

  it "returns true if password is equal or more than 8 characters" do
    result = PasswordChecker.new()
    expect(result.check("elephant")).to eq true
  end

  it "fails if given an empty string" do
    result = PasswordChecker.new()
    expect {result.check("")}.to raise_error "Invalid password, must be 8+ characters."
  end

  it "fails when given no argument" do 
    result = PasswordChecker.new()
    expect { result.check() }.to raise_error ArgumentError
  end

  it "fails when given an integer as an argument" do
    result = PasswordChecker.new()
    expect{ result.check(1234) }.to raise_error NoMethodError
  end
end

require "reminder"

RSpec.describe Reminder do
  it "reminds a user to do a task" do
    reminder = Reminder.new("Allen")
    reminder.remind_me_to("Walk the dog")
    result = reminder.remind()
    expect(result).to eq "Walk the dog, Allen!"
  end
end

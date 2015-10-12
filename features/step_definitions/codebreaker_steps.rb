class Output
  def initialize
    @messages = []
  end
  
  def messages
    @messages ||= []
  end

  def puts(message)
    @messages << message
  end
end

def op
  @output ||= Output.new
end

Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  game = Codebreaker::Game.new(op)
  game.start 
end

Then /^I should see "([^"]*)"$/ do |message|
  expect(op.messages).to include(message)
end

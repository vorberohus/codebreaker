Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  game = Codebreaker::Game.new op
  game.start '1234' 
end

Then /^I should see "([^"]*)"$/ do |message|
  expect(op.messages).to include(message)
end

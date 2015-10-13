Given /^the secret code is "([^"]*)"$/ do |secret|
  @game = Codebreaker::Game.new op
  @game.start secret
end

When /^I guess "([^"]*)"$/ do |guess|
  @game.guess guess
end

Then /^the mark should be "([^"]*)"$/ do |mark|
  expect(op.messages).to include(mark)
end

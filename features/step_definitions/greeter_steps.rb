# language: pt
require './cucumber_greeter'

Dado /^a greeter$/ do
  @greeter = CucumberGreeter.new
end

Quando /^I send it the greet message$/ do
  @message = @greeter.greet
end

Entao /^I should see "(.*?)"$/ do |arg1|
  expect(@message).to eql arg1
end

Given /^I am at "([^"]*)"$/ do |arg1|
  @driver ||= Selenium::WebDriver.for :chrome

  @driver.navigate.to "http://localhost:3000#{arg1}"
end

When /^I type "([^"]*)" into "([^"]*)"$/ do |arg1, arg2|
  element = @driver.find_element(:id, "recipe_#{arg2}")
  element.send_keys arg1
end

When /^I click "([^"]*)"$/ do |arg1|
  @driver.find_element(:css, "[value=\"#{arg1}\"]").submit
end

Then /^I should see "([^"]*)"$/ do |arg1|
  raise "Text not found" unless @driver.page_source.include?(arg1)
end

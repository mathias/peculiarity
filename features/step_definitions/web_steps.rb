Given /^I am on the homepage$/ do
  visit(root_path)
end

Then /^I should see "([^"]*)"$/ do |content|
  # page.find(element).should be_true
  has_content?(content).should be_true
end

When /^I reload the page$/ do
  visit current_path
end

When /^I click "([^"]*)"$/ do |text|
  click_link(text)
end


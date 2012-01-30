Then /^I should see a short description$/ do
  page.find("#description").should be_true
end

Then /^I should see a sign up form$/ do
 page.find("form#sign_up").should be_true
end

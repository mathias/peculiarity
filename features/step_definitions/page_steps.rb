Then /^I should see a short description$/ do
  page.find("#description").should be_true
end

Then /^I should see the beta sign up form$/ do
  page.find("form#sign_up").should be_true
end

Then /^I should see a 404 page with a goat$/ do
  page.find("h2").should have_content("404 Page Not Found")
  page.find("img#goat").should be_true
end

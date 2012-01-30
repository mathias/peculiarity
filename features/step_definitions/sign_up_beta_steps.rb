When /^I fill in the beta sign up form$/ do
  within('form#sign_up') do
    fill_in "email_address", :with => "user@example.org"
  end
end

When /^I submit the beta sign up form$/ do
  within('form#sign_up') do
    click_button("Go")
  end
end

Then /^I should be on the beta sign up confirmation page$/ do
  current_path.should == beta_sign_up_path(BetaSignUp.last)
end

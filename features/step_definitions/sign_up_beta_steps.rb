When /^I fill in the beta sign up form$/ do
  within('form#sign_up') do
    fill_in "beta_sign_up_email_address", :with => "user@example.org"
  end
end

When /^I submit the beta sign up form$/ do
  within('form#sign_up') do
    click_button("Go")
  end
end

Then /^I should be on the beta sign up confirmation page$/ do
  current_path.should == beta_sign_up_confirm_path
end

Then /^I should see an email validation error$/ do
  within('.alert-box.error') do
    has_content?("Please enter a valid email address.").should be_true
  end
end

Then /^I should see Twitter and Facebook links$/ do
  within('.panel') do
    has_selector?('.twitter-share-button').should be_true
    has_selector?('.fb-like').should be_true
  end
end

require 'spec_helper'

describe BetaSignUp do
  it "should require an email address" do
    no_email_sign_up = BetaSignUp.new()
    no_email_sign_up.should_not be_valid
  end

  it "should require a valid email address" do
    invalid_email_sign_up = BetaSignUp.new(:email_address => "fooasdf")
    invalid_email_sign_up.should_not be_valid
  end
end

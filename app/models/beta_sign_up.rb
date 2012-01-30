class BetaSignUp < ActiveRecord::Base
  validates :email_address,
    :presence => true,
    :uniqueness => true,
    :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
end

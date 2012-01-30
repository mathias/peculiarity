class BetaSignUp < ActiveRecord::Base
  validates_presence_of :email_address
  validates_uniqueness_of :email_address
end

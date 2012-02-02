require 'spec_helper'

describe User do
  describe '#role=' do
    let(:user) { User.new(:email => 'foo@example.org', :password => 'foobarbaz') }
    it 'allows a user to be an admin' do
      user.role = 'admin'
      user.save
      User.last.role.should == 'admin'
    end

    it 'does not allow an invalid role' do
      expect { user.role = 'lazy' }.should raise_error
    end
  end
end

class User < ActiveRecord::Base
  ROLES = %w[admin]

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role

  def admin?
    self.role == 'admin'
  end

  def role= role
    if User::ROLES.include? role
      write_attribute(:role, role)
    else
      raise RoleError, "Not a valid role"
    end
  end

end

class RoleError < Exception
end

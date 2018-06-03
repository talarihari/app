class User < ApplicationRecord
  
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:username]
      validates :email, uniqueness: true
      validates :username, uniqueness: true 



  attr_writer :username 

  def email_required?
    false
  end

  def email_changed?
    false
  end

  
  # use this instead of email_changed? for rails >= 5.1
  def will_save_change_to_email?
    false
  end
end

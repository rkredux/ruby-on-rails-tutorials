class User < ApplicationRecord
  
  #before you save the user in the database downcase the email address please 
  before_save { self.email = self.email.downcase }
  
  #rules for validating the name of the user. 
  validates(:name, {:presence => true, :length => {:maximum => 50}})
  
  #set the reg ex for validating the email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  #rule for validating the email address 
  validates(:email, {:presence => true, 
                     :length => {:maximum => 255},
                     :format => {:with => VALID_EMAIL_REGEX}, 
                     :uniqueness => { :case_sensitive => false }
                    }
            )
  #rails method for securing the password. 
  has_secure_password 
  
  #rule for validating the password 
  validates(:password, {:presence => true, :length => { :minimum => 6}})
  
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
end

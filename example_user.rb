class User
  #attr accessor lets us set and get values of 
  #firstname, lastname and email in any of the
  #class methods that are defined in the User class
  #belwo
  attr_accessor :firstname, :lastname, :email
  
  #this just initializes the instance variables
  #firstname, #lastname and #email 
  #when you call #User.new
  def initialize(attributes = {})
    @firstname = attributes[:firstname]
    @lastname = attributes[:lastname]
    @email = attributes[:email]
  end 
  
  #lets play with this here a bit
  def formatted_email
    "#{@firstname} <#{@email}>"
  end 
  
  #new class method added to User class 
  def full_name 
    "#{@firstname}  #{@lastname}"
  end
  
  def alphabetical_name 
    "#{@lastname}, #{firstname}"
  end 

end 


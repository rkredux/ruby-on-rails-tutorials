module SessionsHelper
  
  #this block takes in a user as an argument and 
  #assigns a user_id key to the session object
  #and sets its value to the id of the passed in user
  #from the application record. This method has been 
  #included in the ApplicationController so it can shared
  #by those views that draw from controllers that inherit 
  #from application controller. 
  
  def log_in(user)
    #the session object is actually available form Rails
    #the session object is placed on the users browser so 
    #is available from one page request to another. It 
    # is like temporary cookie that persits until the user
    # shuts the browser. 
    session[:user_id] = user.id
  end
  
  #The first time when a user is created an active session starts, this 
  #helper method saves the current user in an instance variable instead 
  #of making multiple database requests each time. 
  def current_user
    @current_user ||= User.find_by(:id => session[:user_id])
  end
  
  #this method is checking if the user is actually logged in to start with. 
  def logged_in?
    !current_user.nil?
  end
  
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  

end


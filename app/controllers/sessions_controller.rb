class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    #by render new below we are just tricking the Rails to show us the full
    #params hash that gets passed onto to the server when the form is submitted
    #or when the POST action is completed on the route /login or login_path
    
    #grab the user from the database
    user = User.find_by(:email => params[:session][:email].downcase)
    
    #if user exits and the password and email are correct
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else 
      #create an error message
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end 
    
  end 
  
  def destroy
    log_out
    redirect_to root_url
  end 
  
end

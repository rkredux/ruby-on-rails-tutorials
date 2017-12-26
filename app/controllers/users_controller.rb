class UsersController < ApplicationController
  def new
  end
  
  def show 
    puts params
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end 
  
  def create 
    @user = User.new(user_params)  #not the final implementation
    if @user.save #if user was saved successfully in the database
    puts "User created and saved"
    flash[:success] = "You have successfully registered. Welcome to the Sample App"
    redirect_to user_url(@user)
    else
      render 'new'
    end
  end 
  
  private
    
    def user_params 
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  
  
end

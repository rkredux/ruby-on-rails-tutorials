class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  #include all the methods defined in SessionsHelper module
  #throughout anywhere in the application, including the views
  include SessionsHelper
  
  def hello
    render html: "Hello, World"
  end

end
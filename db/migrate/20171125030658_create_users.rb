class CreateUsers < ActiveRecord::Migration[5.1]
  
  #create_table is available by default inside this
  #class because it inherits from ActiveRecord::Migration
  
  #this is the file that gets executed when we run 
  # $rails db:imgrate. So unless you run this command the 
  #Users table in our rails database will never be created
  
  #Very impressive. 
  
  #the other thing that happens when you run the above 
  #command in terminal is the creation of an actual 
  #development.sqllite database. There will be a file 
  #if you notice carefully. This is where you Users table 
  #with all the user model are stored to solve the problem
  #of data persistence. 
  
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end



class CreateNotes < ActiveRecord::Migration
  def change
  	create_table :notes do |t|
  		t.string :user_name
  		t.string :title
  		t.string :content
  	end 
  end
end

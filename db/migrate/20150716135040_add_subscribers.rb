class Subscribers < ActiveRecord::Migration
  def change
  	create_table :subscribers do |t|
  		t.string :firstname, :email
  		t.timestamps
  	end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    # Code to create the table here: 
    create_table :users do |t|
      # column definitions go here (because of calling db:migrate this occurs)
      t.string :type
      t.string :name
      t.string :email
      t.string :password
      t.string :company
      t.string :job_title
      t.string :union_id
      t.string :phone_number
      t.datetime :birthdate
      t.string :address 
      t.timestamps
    end
  end
end

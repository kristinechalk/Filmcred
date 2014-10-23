class CreateRequests < ActiveRecord::Migration
  def change
    # Code to create the table here: 
    create_table :requests do |t|
      # column definitions go here (because of calling db:migrate this occurs)
      t.integer :worker_id
      t.integer :company_id
      t.boolean :pending
      t.integer :timestamp
    end
  end
end

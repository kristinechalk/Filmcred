class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      # column definitions go here (because of calling db:migrate this occurs)
      t.integer :worker_id
      t.integer :company_id
      t.string :filename
      t.integer :timestamp
    end
  end
end

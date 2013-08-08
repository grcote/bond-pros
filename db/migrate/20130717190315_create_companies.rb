class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :ticker
      t.string :url
      t.integer :exchange_id

      t.timestamps
    end
  end
end

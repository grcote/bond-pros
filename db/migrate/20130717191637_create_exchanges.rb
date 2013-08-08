class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.string :exchange_name

      t.timestamps
    end
  end
end

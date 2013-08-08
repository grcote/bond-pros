class CreateBonds < ActiveRecord::Migration
  def change
    create_table :bonds do |t|
      t.string :cusip
      t.string :coupon
      t.string :maturity
      t.string :rating
      t.string :prospectus
      t.integer :company_id

      t.timestamps
    end
  end
end

class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :sex
      t.text :address
      t.string :city
      t.string :state
      t.integer :pincode
      t.text :pan
      t.string :status

      t.timestamps
    end
  end
end

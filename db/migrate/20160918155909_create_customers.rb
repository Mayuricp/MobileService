class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string    :first_name,     limit: 100
      t.string    :middle_name,    limit: 100
      t.string    :last_name,      limit: 100
      t.string    :mobile_number,  limit: 13
      t.text      :address
      t.string    :gender,         limit: 1
      t.boolean   :disabled
      t.timestamps
    end
  add_index :customers, :first_name
  add_index :customers, :middle_name
  add_index :customers, :last_name
  add_index :customers, :mobile_number
  add_index :customers, :disabled
  end
end

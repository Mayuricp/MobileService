class CreateSellers < ActiveRecord::Migration[5.0]
  def change
    create_table :sellers do |t|
      t.string    :first_name,     limit: 100
      t.string    :middle_name,    limit: 100
      t.string    :last_name,      limit: 100
      t.string    :mobile_number,  limit: 13
      t.text      :address
      t.string    :gender,         limit: 1
      t.boolean   :disabled
      t.timestamps
    end

    add_index :sellers, :first_name
    add_index :sellers, :middle_name
    add_index :sellers, :last_name
  end
end

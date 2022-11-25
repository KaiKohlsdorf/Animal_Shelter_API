class AddCatsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :cats do |t|
      t.column :c_name, :string
      t.column :c_breed, :string
    end
  end
end

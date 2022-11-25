class AddDogsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs do |t|
      t.column :d_name, :string
      t.column :d_breed, :string
    end
  end
end

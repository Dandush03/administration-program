class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :display_name
      t.string :email
      t.string :currency
      t.references :user, references: :users, foreign_key: {to_table: :users}
      t.references :organization, references: :organizations, foreign_key: {to_table: :users}

      t.timestamps
    end
    add_index :clients, :email,                unique: true
    add_index :clients, :display_name,         unique: true
  end
end

class CreateOrgUserLists < ActiveRecord::Migration[6.0]
  def change
    create_table :org_user_lists do |t|
      t.references(:user, references: :users, foreign_key: { to_table: :users })
      t.references(:organization, references: :organizations, foreign_key: { to_table: :users })
      t.timestamps
    end
  end
end

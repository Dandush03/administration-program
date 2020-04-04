class CreateOrgBranches < ActiveRecord::Migration[6.0]
  def change
    create_table :org_branches do |t|
      t.string :name
      t.string :country
      t.string :state
      t.string :addres
      t.references :clients, null: false, foreign_key: true

      t.timestamps
    end
  end
end

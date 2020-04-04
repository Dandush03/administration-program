class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :rif
      t.string :country
      t.string :state
      t.string :street
      t.string :logo

      t.timestamps
    end
  end
end

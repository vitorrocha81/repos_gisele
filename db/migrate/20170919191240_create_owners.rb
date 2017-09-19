class CreateOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :owners do |t|
      t.string :login
      t.string :html_url

      t.timestamps
    end
  end
end

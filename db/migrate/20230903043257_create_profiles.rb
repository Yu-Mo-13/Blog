class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :content
      t.string :string

      t.timestamps
    end
  end
end

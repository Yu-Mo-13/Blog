class CreateSnslinks < ActiveRecord::Migration[7.0]
  def change
    create_table :snslinks do |t|
      t.string :app
      t.string :link

      t.timestamps
    end
  end
end

class AddAppToSnslinks < ActiveRecord::Migration[7.0]
  def up
    add_column :snslinks, :account, :string
  end
end

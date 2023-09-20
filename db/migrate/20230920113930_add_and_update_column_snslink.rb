class AddAndUpdateColumnSnslink < ActiveRecord::Migration[7.0]
  def up
    add_column :snslinks, :url, :string
    # add_column :snslinks, :app, :string
    remove_column :snslinks, :link, :string
  end

  def down
    # add_column :snslinks, :link, :string
    # remove_coulumn :snslinks, :app, :string
    # remove_coulumn :snslinks, :url, :string
  end
end

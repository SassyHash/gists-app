class AddColumToGist < ActiveRecord::Migration
  def change
    add_column :gists, :points, :integer, default: 0
  end
end

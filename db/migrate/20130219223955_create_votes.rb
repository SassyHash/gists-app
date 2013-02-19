class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :gist_id
      t.integer :point_addition

      t.timestamps
    end
  end
end

class DropRelation < ActiveRecord::Migration[5.2]
  def change
    drop_table :relationships do |t|
      t.references :user, foreign_key: true
      t.references :follow, foreign_key: { to_table: :users }

      t.timestamps

      t.index %i[user_id follow_id], unique: true
    end
  end
end

class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :category
      t.datetime :start_time
      t.datetime :end_time
      t.string :comentario
      t.integer :user_id

      t.timestamps
    end

    add_index :activities, [:user_id, :created_at]

  end
end

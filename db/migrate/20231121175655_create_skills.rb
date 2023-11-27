class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :deleted
      t.integer :user_id

      t.timestamps
    end
  end
end

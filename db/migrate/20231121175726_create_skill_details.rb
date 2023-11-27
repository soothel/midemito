class CreateSkillDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :skill_details do |t|
      t.string :name
      t.integer :skill_id
      t.integer :ratio

      t.timestamps
    end
  end
end

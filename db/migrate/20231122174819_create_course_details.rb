class CreateCourseDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :course_details do |t|
      t.string :name
      t.integer :course_id
      t.integer :deleted
      t.integer :ratio      

      t.timestamps
    end
  end
end

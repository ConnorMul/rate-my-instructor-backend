class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.integer :years_teaching
      t.string :bio
      t.string :school
      t.integer :likes
      t.string :image

      t.timestamps
    end
  end
end

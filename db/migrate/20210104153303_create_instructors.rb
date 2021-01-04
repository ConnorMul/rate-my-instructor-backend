class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.int :years_teaching
      t.string :bio
      t.string :school
      t.int :likes

      t.timestamps
    end
  end
end

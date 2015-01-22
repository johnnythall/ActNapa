class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :city_of_residence
      t.references :sex, index: true
      t.references :ethnicity, index: true
      t.integer :height
      t.string :age_min
      t.string :age_max
      t.string :hair_color
      t.string :eye_color
      t.string :website
      t.string :reel
      t.boolean :student
      t.string :expected_grad
      t.text :skills
      t.text :previous_experience

      t.timestamps
    end
  end
end

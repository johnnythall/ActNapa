class CreateSexes < ActiveRecord::Migration
  def change
    create_table :sexes do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end

class CreateEthnicities < ActiveRecord::Migration
  def change
    create_table :ethnicities do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

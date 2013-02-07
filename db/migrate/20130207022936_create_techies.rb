class CreateTechies < ActiveRecord::Migration
  def change
    create_table :techies do |t|
      t.string :name
      t.string :lastname
      t.string :position
      t.string :skill
      t.text :bio

      t.timestamps
    end
  end
end

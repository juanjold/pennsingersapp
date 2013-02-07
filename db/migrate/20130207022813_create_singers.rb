class CreateSingers < ActiveRecord::Migration
  def change
    create_table :singers do |t|
      t.string :name
      t.string :lastname
      t.string :voicepart
      t.string :skill
      t.text :bio

      t.timestamps
    end
  end
end

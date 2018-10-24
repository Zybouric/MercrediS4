class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :titre
      t.text :content

      t.timestamps
    end
  end
end

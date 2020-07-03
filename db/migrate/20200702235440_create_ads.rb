class CreateAds < ActiveRecord::Migration[6.0]
  def change
    create_table :ads do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :prince, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

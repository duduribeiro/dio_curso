class CreateUsers < ActiveRecord::Migration[6.0]
  enable_extension "citext"

  def change
    create_table :users do |t|
      t.string :name, null: false
      t.citext :email, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end

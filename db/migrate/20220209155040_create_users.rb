class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false # we added null: false -could be wrong
      t.string :email, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end

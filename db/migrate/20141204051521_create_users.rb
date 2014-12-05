class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, default: "Justin"
      t.string :last_name, default: "Stewart"
      t.string :password_digest
      t.string :email
      t.string :twitter
      t.string :github
      t.string :website
      t.boolean :is_admin, default: false

      t.timestamps
    end
  end
end

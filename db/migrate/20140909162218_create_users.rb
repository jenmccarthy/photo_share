class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :email, :string
      t.column :password_digest, :string

      t.timestamps
    end
  end
end

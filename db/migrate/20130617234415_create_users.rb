class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
     # t.string :email
      t.string :username
      t.string :dog_name

      t.timestamps
    end
  end
end

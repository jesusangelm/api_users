class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :status
      t.string :name
      t.string :gender
      t.string :company
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end

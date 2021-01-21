class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :office
      t.string :email
      t.string :phone
      t.string :position

      t.timestamps
    end
  end
end

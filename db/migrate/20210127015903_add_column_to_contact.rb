class AddColumnToContact < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :cellphone, :string
  end
end

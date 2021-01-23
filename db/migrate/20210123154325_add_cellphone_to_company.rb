class AddCellphoneToCompany < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :cellphone, :string
  end
end

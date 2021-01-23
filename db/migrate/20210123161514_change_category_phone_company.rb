class ChangeCategoryPhoneCompany < ActiveRecord::Migration[5.1]
  def change
  	change_column :companies, :phone, :string
  end
end

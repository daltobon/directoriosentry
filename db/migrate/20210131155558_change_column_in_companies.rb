class ChangeColumnInCompanies < ActiveRecord::Migration[5.1]
  def change
  	change_column :companies, :quantityoffice, :integer
  end
end

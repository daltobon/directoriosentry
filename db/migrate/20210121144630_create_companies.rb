class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name_company
      t.string :controller
      t.string :email
      t.numeric :phone
      t.numeric :quantityoffice

      t.timestamps
    end
  end
end

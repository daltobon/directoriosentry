class Company < ApplicationRecord
extend FriendlyId
friendly_id :name_company, use: :slugged 

 def should_generate_new_friendly_id?
    name_company_changed?
 end

def self.to_csv(options = {})
		CSV.generate(options) do |csv|
		  csv << column_names
		    all.each do |company|
		      csv << company.attributes.values_at(*column_names)
		    end
	    end
	end

end

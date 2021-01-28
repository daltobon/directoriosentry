class Contact < ApplicationRecord
extend FriendlyId
friendly_id :name, use: :slugged

def should_generate_new_friendly_id?
    name_changed?
end

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |contact|
      csv << contact.attributes.values_at(*column_names)
    end
  end
end
end

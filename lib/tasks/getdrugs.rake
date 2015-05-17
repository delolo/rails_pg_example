require 'csv'    

namespace :import_drugs_csv do
    task :create_drugs => :environment do
        csv_text = File.read('drugs_all.csv')
        csv = CSV.parse(csv_text, :headers => true)
        csv.each do |row|
            Drug.create!(row.to_hash)
        end
    end
end
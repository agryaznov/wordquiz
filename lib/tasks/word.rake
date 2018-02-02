namespace :words do
  desc "load words"
  task load: :environment do
    require 'csv'
    csv_text = File.read('words.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Word.create!(row.to_hash)
    end
  end
end

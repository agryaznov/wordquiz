namespace :words do
  desc "load words"
  task load: :environment do
    require 'csv'
    csv_text = File.read('words.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      w = Word.find_or_create_by(eng: row['eng'])
      w.rus = row['rus']
      w.save
    end
  end
end

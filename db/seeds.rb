require 'csv'

eaters_csv = File.read(Rails.root.join('lib', 'seeds', 'eaters.csv'))
eaters = CSV.parse(eaters_csv, headers: true, encoding: 'iso-8859-1:UTF-8')
eaters.each do |row|
  eater = Eater.new
  eater.name = row['name']
  eater.save
end

sandwiches_csv = File.read(Rails.root.join('lib', 'seeds', 'sandwiches.csv'))
sandwiches = CSV.parse(sandwiches_csv, headers:true, encoding:'iso-8859-1:UTF-8')
sandwiches.each do |row|
  s = Sandwich.new
  s.ingredients = row[0]
  s.date = Date.strptime(row[1], '%m/%d/%Y')
  s.location = row[2]
  s.price = row[3]
  s.tasting_notes = row[4]
  s.save
end

eater_sandwiches_csv = File.read(Rails.root.join('lib', 'seeds', 'eater_sandwiches.csv'))
eater_sandwiches = CSV.parse(eater_sandwiches_csv, headers: true, encoding: 'iso-8859-1:UTF-8')
eater_sandwiches.each do |row|
  es = EaterSandwich.new
  es.sandwich_id = row['sandwich_id']
  es.eater_id = row['eater_id']
  es.save
end

comments_csv = File.read(Rails.root.join('lib', 'seeds', 'comments.csv'))
comments = CSV.parse(comments_csv, headers: true, encoding: 'iso-8859-1:UTF-8')
comments.each do |row|
  comment = Comment.new
  comment.text = row["text"]
  comment.sandwich_id = row["sandwich_id"]
  comment.eater_id = row["eater_id"]
  comment.save
end

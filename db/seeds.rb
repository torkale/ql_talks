require 'csv'
current_dir = File.dirname(__FILE__)
users = File.read(File.expand_path('./users.csv', current_dir))
csv = CSV.parse users, :headers => true
csv.each do |row|
  User.create!(row.to_hash)
end
talks = File.read(File.expand_path('./talks.csv', current_dir))
csv = CSV.parse talks, :headers => true
csv.each do |row|
  begin
    Talk.create!(row.to_hash)
  rescue
    puts row
    raise
  end

end

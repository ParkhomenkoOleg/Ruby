100.times do |i|
  Library.create(name: Faker::Company.name, address: Faker::Address.full_address)
end


100.times do |i|
  Book.create(name: Faker::Book.title, description: Faker::Lorem.sentence(word_count: 5), data_release: Faker::Date.between(from:'2000-09-23', to:'2022-09-25'), library_id: rand(1..100))
end


100.times do |i|
  Author.create(name: Faker::Name.first_name, surname: Faker::Name.middle_name, lastname: Faker::Name.last_name, book_id: rand(1..100))
end


100.times do |i|
  name = Faker::Book.genre
  book_id = rand(1..100)
  ActiveRecord::Base.connection.execute("INSERT INTO genres (name, created_at, updated_at, book_id) VALUES ('#{name}', date('now'), date('now'), '#{book_id}')")
end


100.times do |i|
  name_library = rand(1..100)
  name_book = rand(1..100)
  date_taking_book = Faker::Date.between(from: '2010-09-23', to: '2021-04-12')
  library_id = rand(1..100)
  ActiveRecord::Base.connection.execute("INSERT INTO card_readers (name_library, name_book, date_taking_book, created_at, updated_at, library_id) VALUES ('#{name_library}', '#{name_book}', '#{date_taking_book}', date('now'), date('now'), '#{library_id}')")
end


person = FakePerson.new
1.times do |i|
  name = person.first_name
  surname = person.middle_name
  lastname = person.last_name
  date_of_birth = Faker::Date.between(from: '2010-09-23', to: '2011-09-25')
  card_reader_id = rand(1..100)
  email = "testemail@gmai.com"
  ActiveRecord::Base.connection.execute("INSERT INTO users (name, surname, lastname, date_of_birth, card_reader_id, created_at, updated_at, email) VALUES ('#{name}', '#{surname}', '#{lastname}', '#{date_of_birth}', '#{card_reader_id}', date('now'), date('now'), '#{email}')")
end
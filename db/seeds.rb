User.create!(email: 'admin@example.com', password: 'admin', password_confirmation: 'admin', display_name: 'Administrator', role: 'admin')
User.create!(email: 'maikel@gmail.com', password: 'maikel', password_confirmation: 'maikel', display_name: 'Maikel Chandika', role: 'supervisor')
User.create!(email: 'max@gmail.com', password: 'max', password_confirmation: 'max', display_name: 'Max Chandika', role: 'user')

Genre.create! name: 'Horror'
Genre.create! name: 'Motivaton'
Genre.create! name: 'Business'

Author.create! name: 'Budiman'
Publisher.create! name: 'Gramultimedia'
Book.create! author: Author.first, publisher: Publisher.first, genre: Genre.all.sample, code: 'X01', isbn: 'abcd-1234', title: 'Lord of the Cling', year: 2020
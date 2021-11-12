require "open-uri"
require "byebug"
puts "cleanig DB"
Article.destroy_all


puts "creating Articles"

3.times do
  file = URI.open('https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2020/06/playstation-5-1964465.jpg?itok=EXk3Upcm')
  article = Article.new(title: 'PS5', body: "A great console")
  article.photo.attach(io: file, filename: 'ps5.png', content_type: 'image/png')
  article.save
  byebug
end

puts "done"

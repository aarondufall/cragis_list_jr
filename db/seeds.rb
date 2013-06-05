

categories = ["Personals","For Sale","Jobs","Community","Housing"]

categories.each do |category|
  cat = Category.find_or_create_by_name(name: category)
  10.times do
    post = Post.new(name:         Faker::Name.name, 
                    secret_key:   SecureRandom.hex, 
                    price:        (rand * 100).round(2),
                    email:        Faker::Internet.email,
                    location:     Faker::Address.zip_code)
    post.category = cat
    post.save
  end
end







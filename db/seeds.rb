user_1 = User.create!(
  username: "user",
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  street_address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state,
  zip: Faker::Address.zip_code,
  email: Faker::Internet.email,
  password: 'password',
  role: 0
)

user_2 = User.create!(
  username: "merchant_user",
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  street_address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state,
  zip: Faker::Address.zip_code,
  email: Faker::Internet.email,
  password: 'password',
  role: 1
)

user_3 = User.create!(
  username: "admin_user",
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  street_address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state,
  zip: Faker::Address.zip_code,
  email: Faker::Internet.email,
  password: 'password',
  role: 2
)

user_4 = User.create!(
  username: Faker::Internet.username(specifier: 2..16) + (Faker::Number.between(from: 1, to: 999)).to_s,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  street_address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state,
  zip: Faker::Address.zip_code,
  email: Faker::Internet.email,
  password: 'password',
  role: 1
)

user_5 = User.create!(
  username: Faker::Internet.username(specifier: 5..16),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  street_address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state,
  zip: Faker::Address.zip_code,
  email: Faker::Internet.email,
  password: 'password',
  role: 1
)

merchant_1 = Merchant.create!(
  name: Faker::Artist.name + " & Co.",
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state,
  zip: Faker::Address.zip_code,
)

merchant_2 = Merchant.create!(
  name: Faker::Artist.name + " & Co.",
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state,
  zip: Faker::Address.zip_code,
)

merchant_1.users << [user_2, user_4, user_5]
merchant_2.users << user_5

item_1 = Item.create!(
  name: Faker::Commerce.product_name,
  description: Faker::TvShows::RickAndMorty.quote,
  price: Faker::Number.between(from: 100, to: 1100),
  image: Faker::Lorem.sentence(word_count: 1) + ".jpg",
  inventory: Faker::Number.between(from: 1, to: 40),
  active: true,
  merchant_id: merchant_1.id
)

item_2 = Item.create!(
  name: Faker::Commerce.product_name,
  description: Faker::TvShows::RickAndMorty.quote,
  price: Faker::Number.between(from: 100, to: 1100),
  image: Faker::Lorem.sentence(word_count: 1) + ".jpg",
  inventory: Faker::Number.between(from: 1, to: 40),
  active: true,
  merchant_id: merchant_1.id
)

item_3 = Item.create!(
  name: Faker::Commerce.product_name,
  description: Faker::TvShows::RickAndMorty.quote,
  price: Faker::Number.between(from: 100, to: 1100),
  image: Faker::Lorem.sentence(word_count: 1) + ".jpg",
  inventory: Faker::Number.between(from: 1, to: 40),
  active: true,
  merchant_id: merchant_1.id
)

item_4 = Item.create!(
  name: Faker::Commerce.product_name,
  description: Faker::TvShows::RickAndMorty.quote,
  price: Faker::Number.between(from: 100, to: 1100),
  image: Faker::Lorem.sentence(word_count: 1) + ".jpg",
  inventory: Faker::Number.between(from: 1, to: 40),
  active: true,
  merchant_id: merchant_2.id
)

review_1 = Review.create!(
  title: Faker::Hacker.adjective + Faker::Hacker.ingverb,
  content: Faker::Hacker.say_something_smart,
  rating: Faker::Number.between(from: 1, to: 5),
  user: user_1,
  item: item_1
)

review_2 = Review.create!(
  title: Faker::Hacker.adjective + Faker::Hacker.ingverb,
  content: Faker::Hacker.say_something_smart,
  rating: Faker::Number.between(from: 1, to: 5),
  user: user_2,
  item: item_1
)

review_3 = Review.create!(
  title: Faker::Hacker.adjective + Faker::Hacker.ingverb,
  content: Faker::Hacker.say_something_smart,
  rating: Faker::Number.between(from: 1, to: 5),
  user: user_2,
  item: item_3
)

order_1 = Order.create!(
  name: "Order: " + Faker::Artist.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state,
  zip: Faker::Address.zip_code, 
  user: user_1
)

order_2 = Order.create!(
  name: "Order: " + Faker::Artist.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state,
  zip: Faker::Address.zip_code, 
  user: user_1
)

item_1.orders << [order_1, order_2]
item_2.orders << order_2
require 'faker'

15.times do

User.create!(:username => Faker::Internet.user_name,
              :password => Faker::Internet.password(8),
              :email => Faker::Internet.email)

end

20.times do
Restaurant.create!(:name => Faker::Company.name,
                    :description => Faker::Hipster.paragraph,
                    :cuisine => Faker::Hipster.words(3))

end

10.times do

Review.create!(
                 :body => Faker::Hipster.paragraph,
                  :user_id => Faker::Number.between(1..15),
                  :restaurant_id => Faker::Number.between(1..20)
                  )
end

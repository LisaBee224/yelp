require 'faker'

15.times do

User.create!(:username => Faker::Internet.user_name,
              :password => Faker::Internet.password(8))

end

20.times do
Restaurant.create!(:name => Faker::Company.name,
                    :description => Faker::Lorem.paragraph(2,true,4),
                    :type => Faker::Hipster.words(3))

end

10.times do

Review.create!(
                 :body => Faker::Hipster.paragraph,
                  :user_id => Faker::Number.between(1..15),
                  :reataurant_id => Faker::Number.between(1..20)
                  )
end

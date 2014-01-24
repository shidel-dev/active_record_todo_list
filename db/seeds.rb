require 'faker'

5.times { List.create!(:name => Faker::Commerce.product_name) }

# 5 times create a list with fake name
  # add 10 tasks to each list
List.all.each do |list|
  10.times do
    list.tasks << Task.create(:description => Faker::Lorem.sentence, :complete => 0)
  end
end


#test to see if we can insert a todo into our database through our model using activerecord
# Task.create(:description => Faker::Lorem.sentence, :complete => 0)

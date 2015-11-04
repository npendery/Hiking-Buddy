require 'factory_girl'

FactoryGirl.define do
  factory :hike do
    sequence(:name) { |n| "hike number #{n}" }
    location "116 Poole Rd, Jaffrey, NH 03452"
    description "Best hike close to Boston! Many different routes to the top where you will get an amazing view!"
    website "https://www.nhstateparks.org/visit/state-parks/monadnock-state-park.aspx"
  end
end

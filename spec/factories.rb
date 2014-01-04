FactoryGirl.define do
  factory :item do
    title "Item Title"
    username "luser"
    url "http://asdf.com/qwer/zxcv"
    upvotes { rand(3000) }
  end

  factory :comment do
    item
    content "This is a comment"
    username "fred"
  end
end

FactoryGirl.define do
  factory :place do
    type ""
    street "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    user_id "1"
  end

  factory :invalid_place do
  	type ""
  	street "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
  end
end




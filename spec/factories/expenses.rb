# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :expense do
    user_id 1
    course_id 1
    name "MyString"
    detail "MyText"
    amount "9.99"
  end
end

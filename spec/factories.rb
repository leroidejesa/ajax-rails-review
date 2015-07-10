FactoryGirl.define do
  factory(:user) do |user|
    username('admin')
    email('admin@admin.com')
    password('11111111')
    admin true
  end
end

require_relative '../configuration'

1.upto(15) do |x|
 FactoryGirl.create(:worker)
end

1.upto(5) do |y|
  FactoryGirl.create(:company)
end
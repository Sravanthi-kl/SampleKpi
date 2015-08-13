require 'faker'

FactoryGirl.define do
  factory :jb_branch do |f| 
  	f.branchname {Faker::Name.branch_name}  	
    
  end

end

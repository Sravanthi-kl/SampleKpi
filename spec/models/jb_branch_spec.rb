require 'rails_helper'

RSpec.describe JbBranch, :type => :model do
    it "has a valid factory" do 
    	Factory.create(:JBBranch).should be_valid 

     end  	
    it "is invalid without a branchname" 
  
  
end

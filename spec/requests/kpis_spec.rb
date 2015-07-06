require 'rails_helper'

RSpec.describe "Kpis", :type => :request do
  
  describe "addkpi page" do
    it "it should  have the content 'welcome'" do
    	get '/addkpi'       
    	end
	end 	

  describe "newkpi page" do
    it "it should  have the content 'welcome'" do
    	get '/newkpi'        
    	end
	end

    describe "adddata page" do
    it "it should  have the content 'welcome'" do
    	get '/adddata'       
    end
  end


end

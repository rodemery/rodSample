require 'spec_helper'

describe "Static Pages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_home_path
      response.status.should be(200)
    end
  end

  # Home page
  describe "Home page" do
  	before { visit '/static_pages/home' }
  	# Content
  	it "should have the content 'Sample App'" do
  		# visit '/static_pages/home'
  		expect(page).to have_content('Sample App')
  	end
  	# Title
  	it "should have the Title 'Home'" do
  		# visit '/static_pages/home'
  		expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
  	end
  end

  # Help page
  describe "Help page" do
  	before { visit '/static_pages/help' }
  	# Content
  	it "should have the content 'Help'" do
  		# visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end
  	# Title
  	it "should have the Title 'Help'" do
  		# visit '/static_pages/help'
  		expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
  	end
  end

  # About page
  describe "About page" do
  	before { visit '/static_pages/about' }
  	# Content
  	it "should have the content 'About'" do
  		# visit '/static_pages/about'
  		expect(page).to have_content('About')
  	end
  	# Title
  	it "should have the Title 'About'" do
  		# visit '/static_pages/about'
  		expect(page).to have_title('Ruby on Rails Tutorial Sample App | About')
  	end
  end
end

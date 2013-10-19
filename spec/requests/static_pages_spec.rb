require 'spec_helper'

describe "StaticPages" do
  # describing the Home page (content inside quotes meant to be description, irrelevant to RSpec)
  describe "Home page" do
=begin
    # when you visit the Home page at /static_pages/home, the content should contain the words "Sample App"
    it "should have the content 'Sample App'" do
    	# using Capybara to similate visiting the URI
      visit '/static_pages/home'
      	# using Capybara page variable to test that resulting page has the right content
      page.should have_content('Sample App')
    end
=end
    
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
       # have_selector method checks for an HTML element (selector/title in below example) with the given content
      page.should have_selector('title',
                        # => uses a symbol as the key, so content listed below does not need to be exact match, can use "| Home"
                        :text => "Sample App | Home")
    end
  end

  describe "Help page" do
=begin
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
=end

     it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end 

     it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Sample App | Help")
    end
  end

  describe "About page" do
=begin
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
=end

    it "should have the h1 'About Us'" do
      visit '/static_pages/About'
      page.should have_selector('h1', :text => 'About Us')
   end

    it "should have the title 'About Us'" do
    visit '/static_pages/about'
    page.should have_selector('title',
                      :text => "Sample App | About Us")
    end
  end

end


require 'spec_helper'

describe "StaticPages" do  
=begin
define base_title in app/helpers/application_helper.rb instead
  let (:base_title) { "Sample App" }
  # describing the Home page (content inside quotes meant to be description, irrelevant to RSpec)
=end
  subject { page }
  describe "Home page" do
    # before block allows for elmination of visit to  root path duplication
    before { visit root_path }

    it { should have_selector('h1',    text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end
  
=begin    
  =begin
    # when you visit the Home page at /static_pages/home, the content should contain the words "Sample App"
    it "should have the content 'Sample App'" do
    	# using Capybara to similate visiting the URI
      visit '/static_pages/home'
      	# using Capybara page variable to test that resulting page has the right content
      page.should have_content('Sample App')
    end
  =end
    
    it "should have the h1 'Home'" do
      # Instead of using hard-code address can use desire named route
      #visit '/static_pages/home'
      #visit root_path
      page.should have_selector('h1', :text => 'Home')
    end

    # it "should have the title 'Home'" do
    it "should have the base title" do
      #visit root_path
       # have_selector method checks for an HTML element (selector/title in below example) with the given content
      page.should have_selector('title',
                        # => uses a symbol as the key, so content listed below does not need to be exact match, can use "| Home"
                        #:text => "#{base_title} | Home")
                        :text => "Sample App")
    end

    it "should not have a custom page title" do
      #visit root_path
      page.should_not have_selector('title', :text => '| Home')
    end

  end
=end

  describe "Help page" do
=begin
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
=end

     it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end 

     it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title',
                        # need to remove #{base_title} as we are no longer using it at the top
                        # :text => "#{base_title} | Help")
                        :text => "Help")
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
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
   end


    it "should have the title 'About Us'" do
    visit about_path
    page.should have_selector('title',
                      :text => "About Us")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
   end


    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title', text: "Contact")
    end
  end

end


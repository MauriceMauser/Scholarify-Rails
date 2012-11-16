require 'spec_helper'

describe "Pages" do

  describe "Home page" do

    it "should have the content 'Scholarify'" do
      visit '/pages/home'
      page.should have_content('Welcome to Scholarify')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/pages/help'
      page.should have_content('Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/pages/about'
      page.should have_content('About Us')
    end
  end

  describe "Blog page" do

    it "should have the content 'Blog'" do
      visit '/pages/blog'
      page.should have_content('Blog')
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/pages/contact'
      page.should have_content('Contact')
    end
  end


  describe "Features page" do

    it "should have the content 'Features'" do
      visit '/pages/features'
      page.should have_content('Features')
    end
  end

  describe "Jobs page" do

    it "should have the content 'Jobs'" do
      visit '/pages/jobs'
      page.should have_content('Jobs')
    end
  end

  describe "Privacy page" do

    it "should have the content 'Privacy'" do
      visit '/pages/privacy'
      page.should have_content('Privacy')
    end
  end

  describe "Support page" do

    it "should have the content 'Support'" do
      visit '/pages/support'
      page.should have_content('Support')
    end
  end

  describe "Terms of Service page" do

    it "should have the content 'Terms of Service'" do
      visit '/pages/tos'
      page.should have_content('Terms of Service')
    end
  end
end

require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :email => "MyString",
      :provider => "MyString",
      :image => "MyString",
      :location => "MyString",
      :education => "MyString",
      :experience => "MyString",
      :cv => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_provider", :name => "user[provider]"
      assert_select "input#user_image", :name => "user[image]"
      assert_select "input#user_location", :name => "user[location]"
      assert_select "input#user_education", :name => "user[education]"
      assert_select "input#user_experience", :name => "user[experience]"
      assert_select "input#user_cv", :name => "user[cv]"
    end
  end
end

require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "MyString",
      :email => "MyString",
      :provider => "MyString",
      :image => "MyString",
      :location => "MyString",
      :education => "MyString",
      :experience => "MyString",
      :cv => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
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

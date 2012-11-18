require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :email => "Email",
        :provider => "Provider",
        :image => "Image",
        :location => "Location",
        :education => "Education",
        :experience => "Experience",
        :cv => "Cv"
      ),
      stub_model(User,
        :name => "Name",
        :email => "Email",
        :provider => "Provider",
        :image => "Image",
        :location => "Location",
        :education => "Education",
        :experience => "Experience",
        :cv => "Cv"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Provider".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Education".to_s, :count => 2
    assert_select "tr>td", :text => "Experience".to_s, :count => 2
    assert_select "tr>td", :text => "Cv".to_s, :count => 2
  end
end

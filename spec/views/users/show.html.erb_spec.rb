require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Name",
      :email => "Email",
      :provider => "Provider",
      :image => "Image",
      :location => "Location",
      :education => "Education",
      :experience => "Experience",
      :cv => "Cv"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Provider/)
    rendered.should match(/Image/)
    rendered.should match(/Location/)
    rendered.should match(/Education/)
    rendered.should match(/Experience/)
    rendered.should match(/Cv/)
  end
end

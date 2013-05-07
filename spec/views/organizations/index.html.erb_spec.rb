require 'spec_helper'

describe "organizations/index.html.erb" do

  let(:org1) do
    stub_model Organization,:name => 'test', :address => "12 pinner rd", :telephone => "1234", :website => 'http://a.com'
  end

  let(:org2) do
    stub_model Organization,:name => 'test', :address => "12 oxford rd", :telephone => "4534", :website => 'http://b.com'
  end

  before(:each) do
    assign(:organizations, [ 
      org1,
      org2
    ])
  end

  it "renders a search form" do
    render
    rendered.should have_selector "form input[name='q']"
    rendered.should have_selector "form input[type='submit']"
  end

  it "render organization names with hyperlinks" do
    render
    rendered.should have_link org1.name, :href => organization_path(org1.id)
    rendered.should have_link org2.name, :href => organization_path(org2.id)
  end

  it "does not render addresses and telephone numbers" do
    render
    rendered.should_not have_content org1.address
    rendered.should_not have_content org1.telephone
    rendered.should_not have_content org2.address
    rendered.should_not have_content org2.telephone
  end

  it "does not renders edit and destroy links" do
    render
    rendered.should_not have_link 'Edit'
    rendered.should_not have_link 'Destroy'
    rendered.should_not have_content org2.address
    rendered.should_not have_content org2.telephone
  end


    
end

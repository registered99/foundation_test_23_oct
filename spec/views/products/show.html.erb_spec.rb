require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :id => 1,
      :name => "Name",
      :description => "Description",
      :price => "Price"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/Price/)
  end
end

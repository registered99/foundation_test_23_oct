require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :id => 1,
      :name => "MyString",
      :description => "MyString",
      :price => "MyString"
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path(@product), :method => "post" do
      assert_select "input#product_id", :name => "product[id]"
      assert_select "input#product_name", :name => "product[name]"
      assert_select "input#product_description", :name => "product[description]"
      assert_select "input#product_price", :name => "product[price]"
    end
  end
end

require "test_helper"

class ProductTest < ActiveSupport::TestCase
  fixtures :products

  test "product attributes must not be empty" do product = Product.new
    assert product.invalid?
    assert product.errors[:name].any?
    assert product.errors[:description].any?
    assert product.errors[:image_url].any?
    assert product.errors[:adquisition_date].any?
  end

  test "product is not valid without a unique title" do
    product = Product.new(name: products(:closet).name,
                          description: "yyy",
                          image_url: "fred.gif",
                          colour: "white")

    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:name]
  end

  test "product "


  test "product adquisition date must be less or equal than today" do
    product = Product.new(name: products(:closet).name,
                          description: "yyy",
                          image_url: "zzz.jpg",
                          colour: "white")
    product.adquisition_date = Date.tomorrow
    assert product.invalid?
    assert_equal ["must be less than Date.tomorrow"],
      product.errors[:adquisition_date]

    product.adquisition_date = Date.today
    assert product.valid?
    product.adquisition_date = Date.yesterday
    assert product.valid?
  end

end

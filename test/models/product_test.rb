require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "product attributes must not be empty" do product = Product.new
    assert product.invalid?
    assert product.errors[:name].any?
    assert product.errors[:description].any?
    assert product.errors[:image_url].any?
    assert product.errors[:adquisition_date].any?
  end
end

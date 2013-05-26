require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  fixtures :products

  test "product_attributes_must_not_be_empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:category].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product_price_must_be_positive" do
    product = Product.new(
          category: 'Bike category',
          title: 'Bike Title',
          description: 'Bike description',
          image_url: 'bike.jpg'
    )
    product.price = -1
    assert product.invalid?
    assert_equal ['must be greater than or equal to 0.01'],
          product.errors[:price]

    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
          product.errors[:price]

    product.price = 1
    assert product.valid?
  end

  def new_product(image_url)
     Product.new(title: 'Bike title',
                 category: 'bike category',
                 description: 'bike description',
                 price: 1,
                 image_url: image_url)
  end

  test "image url" do
    ok = %w{ mtb.gif racer.jpg touring.png MTB.JPG RACER.Png
             http://a.b.c/x/y/z/fred.gif}
    bad = %w{ mtb.doc racer.jpr touring.pzg MTB.JKG RACER.DNA}

    ok.each do |name|
      assert new_product(name).valid?, "#{name} should be valid"
    end
    bad.each do |name|
      assert new_product(name).invalid?, "#{name} should not be valid"
    end
  end

  test "product is not valid without a unique title" do
    product = Product.new(title: products(:bikes).title,
                          description: "Ideal for people beginning to mountain bike",
                          price: 1,
                          image_url: "bikes.jpg")
    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end
end

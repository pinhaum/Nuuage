FactoryBot.define do
  factory :product do
    sequence(:name) { |n| "Product  #{n}" }
    description { Faker::Lorem.paragraph }
    price { Faker::Commerce.price(range: 1.0..200.0) }
    image { Rack::Test::UploadedFile.new(Rails.root.join("spec/support/images/product_image.png")) }

    after :build do |product|
      product.productable = create(:game)
    end
  end
end

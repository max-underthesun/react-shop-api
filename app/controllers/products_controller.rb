class ProductsController < ApplicationController
  def index
    render json: products_with_images, status: :ok
  end

  private

  def products_with_images
    @products = Product.includes(:images)
    @products.map do |product|
      prod = product.attributes
      # prod[:images] = product.images.map { |image| "#{Rails.root}/#{image.src}"}
      prod[:images] = product.images.map { |image| "http://localhost:3333#{image.src}"}
      prod
    end
  end
end

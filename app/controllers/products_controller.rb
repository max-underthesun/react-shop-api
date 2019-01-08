class ProductsController < ApplicationController
  def index
    render json: products_with_images, status: :ok
  end

  def show
    render json: product_with_images, status: :ok
  end

  private

  def products_with_images
    @products = Product.includes(:images)
    @products.map do |product|
      prod = product.attributes
      prod[:image] = "http://localhost:3333/#{product.images[0].src}"
      prod
    end
  end

  def product_with_images
    @product = Product.find(params[:id])
    prod = @product.attributes
    prod[:images] = @product.images.map { |image| "http://localhost:3333/#{image.src}"}
    prod
  end
end

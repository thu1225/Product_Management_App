json.extract! product, :id, :title, :sku, :price, :quantity, :image_url, :created_at, :updated_at
json.url product_url(product, format: :json)

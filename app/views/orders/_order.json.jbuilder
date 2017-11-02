json.extract! order, :id, :order_number, :service_name, :product_price, :seller, :seller_website, :address, :payment_method, :description, :created_at, :updated_at
json.url order_url(order, format: :json)

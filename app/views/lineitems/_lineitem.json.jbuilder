json.extract! lineitem, :id, :service_name, :description, :product_price, :quantity, :payment_method, :delivery_date, :created_at, :updated_at
json.url lineitem_url(lineitem, format: :json)

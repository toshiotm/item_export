json.array!(@items) do |item|
  json.extract! item, :id, :name, :shipping_cost, :description, :status, :categories, :sku_code, :sku, :price, :inventory, :inventory_status
  json.url item_url(item, format: :json)
end

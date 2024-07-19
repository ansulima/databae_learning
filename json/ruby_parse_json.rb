require 'json'
require 'pry'

def load_json(filename)
  file = File.read(filename)
  JSON.parse(file)
end

def display_user_orders(data, user_id)
  puts "Pedidos do Usuário #{user_id}"
  data["orders"].each do |order|
    next if order["user_id"] != user_id
    puts "Pedido ID: #{order["id"]} - Total: $#{order["total_price"]}"
  end
end

filename = 'ecommerce.json'
data = load_json(filename)
display_user_orders(data, 2)
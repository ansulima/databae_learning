require 'mysql2'
require 'pry'

def database_connection
  Mysql2::Client.new(host: 'localhost', username: 'root', password: '', database: 'anderson1')
end

def menu
  puts "\n1. Create Table"
  puts "2. Insert Data"
  puts "3. Read Data"
  puts "4. Update Data"
  puts "5. Delete Data"
  puts "6. Exit"
  print "Choosen an option: "
end

def create_table(client)
  puts "Enter table name: "
  table_name = gets.strip
  puts "Enter columns and types (e.g. id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255))"
  columns_details = gets.strip
  client.query("CREATE TABLE #{table_name} (#{columns_details})")
  puts "Table created."
end

def insert_data(client)
  puts "Enter table name: "
  table_name = gets.strip
  puts "Enter Columns (e.g. id, name): "
  columns = gets.strip
  puts "Enter Values (e.g. 'Jhon Doe'): "
  values = gets.strip
  
  client.query("INSERT INTO #{table_name} (#{columns}) VALUES (#{values})")
  puts "Data inserted. "
end

def read_data(client)
  puts "Enter table name: "
  table_name = gets.strip
  puts "Enter Wildcard name (e.g. * = All columnsor Specific = id, name)"
  wildcard = gets.strip

  rows = client.query("SELECT #{wildcard} FROM #{table_name}")
  rows.each do |row|
    row.each do |key, value|
      puts "#{key}: #{value}"
    end
  end
end

def update_data(client)
  puts "Enter table name: "
  table_name = gets.strip
  puts "Enter Set clause (e.g. name = 'Anderson Freitas' where id = 1)"
  clause = gets.strip

  client.query("UPDATE #{table_name} SET (#{clause})")
  puts "Data Updated"
end

def delete_data(client)
  puts "Enter table name: "
  table_name = gets.strip
  puts "Enter with condiction: (e.g. id = 1)"
  condiction = gets.strip

  client.query("DELETE FROM #{table_name} where #{condiction}")
end

def main
  
  begin
    client = database_connection
    loop do
      menu
      option = gets.to_i

      case option
      when 1
        create_table(client)
      when 2
        insert_data(client)
      when 3
        read_data(client)
      when 4
        update_data(client)
      when 5
        delete_data(client)
      when 6
        puts "Exiting program."
        exit(0)
      else
        puts "Invalid option."
      end 
    end
  rescue Mysql2::Error => e
    puts "Error while connection is MySQL #{e.message}"
  ensure
    client.close if client
    puts "Mysql connection is closed."
  end
end


main

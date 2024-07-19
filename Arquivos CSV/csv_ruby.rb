require 'pry'
require 'pry-nav'

# string = "'id','name','department_id'\n1,Jhon Doe, 32\n2,Rodolfo Peixoto, 35\n3,Carlos André, 65"
# csv = CSV.parse(string)
# csv.each_with_index do |row, index_row|
# 	row.each_with_index do |column, index_columns|
# 		binding.pry
# 		# puts "id  |   name            |   department_id"
# 		# puts "#{csv[1][0]}   | #{csv[1][1]}          |#{csv[1][2]}"
# 		# puts "#{csv[2][0]}   | #{csv[2][1]}   |#{csv[2][2]}"
# 		# puts "#{csv[3][0]}   | #{csv[3][1]}      |#{csv[3][2]}"
# 	end
# end
require 'csv'


def add_entry(file_path)
	print("Enter id, name, descricao: ")
	command = gets.chomp
	CSV.open(file_path, "a") do |csv|
		new_record = command.split(',')

		csv << new_record
	end
end 

def view_entry(file_path)
	data = CSV.read(file_path)
	first_row_size = data[0].size
	columns = (0...first_row_size).to_a

	widths = columns.map do |column|
		data.map { |row| row[column].size }.max
	end

	data.first.each_with_index do |column, index|
		just_space_column = column.ljust(widths[index])
		print "#{just_space_column} | "
	end

	puts
	
	columns_with_header = data[1..-1]
	
	columns_with_header.each do |row|
		row.each_with_index do |column, index|
			just_space_column = column.ljust(widths[index])
			print "#{just_space_column} | "
		end
		puts
	end
end

def delete_entry(file_path)
	#binding.pry
	print "Enter 'ID' of delete: "
	id = gets.chomp.to_i

	table = CSV.table(file_path)

	table.delete_if do |row|
		row[:id] == id
	end

	File.open(file_path, 'w') do |file|
		file.write(table.to_csv)
	end
end

def update_entry(file_path)
	print "Enter with 'ID' for update: "
	id = gets.chomp.to_i

	table = CSV.table(file_path)

	table.each do |row|
		if row[:id] == id
			print "Enter with name: "
			row[:name] = gets.chomp
			print "Enter with description: "
			row[:description] = gets.chomp
		end

		File.open(file_path, 'w') do |file|
			file.write(table.to_csv)
		end
	end
end

file_path = 'skilldev.csv'

loop do
	puts "\n1. Add a record"
	puts "2. View a record"
	puts "3. Delete a record"
	puts "4. Update a record"
	puts "5. Exit"
	
	puts "Escolha uma opção: "
	option = gets.strip.to_i

	case option
	when 1
		add_entry(file_path)
	when 2
		view_entry(file_path)
	when 3
		delete_entry(file_path)
	when 4
		update_entry(file_path)
	when 5
		exit()
	else
		puts "Choice invalid."
	end
end

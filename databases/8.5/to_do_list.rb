require "sqlite3"
require "faker"

db = SQLite3::Database.new("To_Do_List.db")
db.results_as_hash = true

create_table_command = <<-SQL 
   CREATE TABLE IF NOT EXISTS To_Do_List(
	id INTEGER PRIMARY KEY, 
	activity VARCHAR(250), 
	due VARCHAR(250),
	category VARCHAR(250),
	priority INT,
	done BOOLEAN
	)
SQL

db.execute(create_table_command)

def add_item(db, activity, due_date, cat, priority, done)
	db.execute("INSERT INTO To_Do_List (activity, due, category, priority, done) VALUES (?, ?, ?, ?, ?)", 
		[activity, due_date, cat, priority, done])
end



# puts "What do you need to add?"
# activity = gets.chomp

# puts "when is it due (Monday-Sunday)?"
# due_date = gets.chomp

# puts "what kind of activity is it?"
# category = gets.chomp

# puts "what's the priority level (on a scale of 1 - 10)?"
# priority = gets.chomp

# puts "have you completed it?(True/False)"
# done = gets.chomp

# add_item(db, activity, due_date, category, priority, done)

# days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
# puts "What day is today?"
# today = gets.chomp 
# idx = days.index(today)
# tomorrow = days[idx + 1]

def delete_item(db, cat)
	db.execute("DELETE FROM To_Do_List WHERE category='cat'")
end

delete_item(db, "class")

to_do_list = db.execute("SELECT * FROM To_Do_List")
puts to_do_list.class
to_do_list.each do |list|
	if list["done"] == "False" 
		puts "#{list["due"]}: #{list["activity"]} (#{list["priority"]}/10)"
	end
end

due_tomorrow = db.execute("SELECT * FROM To_Do_List WHERE due='Monday'")
due_tomorrow.each do |list|
	puts "#{list["due"]}: #{list["activity"]} (#{list["priority"]}/10)"
end

important = db.execute("SELECT * FROM To_Do_List WHERE priority > 5")
important.each do |list|
	puts "#{list["due"]}: #{list["activity"]} (#{list["priority"]}/10)"
end

class_work = db.execute("SELECT * FROM To_Do_List WHERE category='class'")
class_work.each do |list|
	puts "#{list["due"]}: #{list["activity"]} (#{list["priority"]}/10)"
end

# to_do_list.each do |list|
# 	puts "Monday:"
# 	puts "#{list["activity"]} (#{list["priority"]}/10)" if list["due"]=="Monday"
# 	puts "Tuesday:"
# 	puts "#{list["activity"]} (#{list["priority"]}/10)" if list["due"]=="Tuesday"
# 	puts "Wednesday:"
# 	puts "#{list["activity"]} (#{list["priority"]}/10)" if list["due"]=="Wednesday"
# 	puts "Thursday:"
# 	puts "#{list["activity"]} (#{list["priority"]}/10)" if list["due"]=="Thursday"
# 	puts "Friday:"
# 	puts "#{list["activity"]} (#{list["priority"]}/10)" if list["due"]=="Friday"
# 	puts "Weekend:"
# 	puts "#{list["activity"]} (#{list["priority"]}/10)" if list["due"]=="Saturday" || list["due"]=="Sunday"
# end



# create_table_command_2 = <<-SQL2 
#    CREATE TABLE IF NOT EXISTS categories(
# 	id INTEGER PRIMARY KEY, 
# 	category VARCHAR(250), 
# 	)
# SQL2

# db.execute(create_table_command_2)

# def add_item_2(db, category)
# 	db.execute("INSERT INTO categories (category) VALUES (?)", 
# 		[cat])
# end

# cats = ["homework", "class", "house", "acting"]
# cats.each do |cat|
# add_item_2(db, cat)
# end

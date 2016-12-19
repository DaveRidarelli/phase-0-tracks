require 'sqlite3'

  todos_db = SQLite3::Database.new("todos.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS tasks(
    id INTEGER PRIMARY KEY,
    item_name VARCHAR(255),
    priority_level INT,
    time_frame VARCHAR(255), 
    difficulty_level INT,
    bonus_notes VARCHAR(255)
  )
SQL

  todos_db.execute(create_table_cmd)

def add_task(db, item_name, priority_level, time_frame, difficulty_level, bonus_notes)
  db.execute("INSERT INTO tasks (item_name, priority_level, time_frame, difficulty_level, bonus_notes) 
  VALUES (?, ?, ?, ?, ?);", [item_name, priority_level, time_frame, difficulty_level, bonus_notes]
  )
end

def remove_task(db, item)
  db.execute("DELETE FROM tasks WHERE item_name=? ;", [item])
end

def get_task_data(db, action_name)
  db.execute("SELECT * FROM tasks;")
end

puts "Please enter an item for your To-Do to your list. "

  db = todos_db
  action_name = gets.chomp

  puts "What is the priority level? (1-10)"
  priority_level = gets.chomp.to_i
  puts "What is your time frame?"
  time_frame = gets.chomp.to_i
  puts "What is the difficulty level? (1-10)"
  difficulty_level = gets.chomp.to_i
  puts "Add any additional notes now."
  bonus_notes = gets.chomp
  puts " "

    add_task(db, action_name, priority_level, time_frame, difficulty_level, bonus_notes)
    
    task_data = get_task_data(db, action_name)

  puts "Current Top Task Name: #{task_data[0][1]}"
  puts "Priority Level: #{task_data[0][2]}"
  puts "Time Frame: #{task_data[0][3]}"
  puts "Difficulty Level: #{task_data[0][4]}"
  puts "Additional Notes: #{task_data[0][5]}"

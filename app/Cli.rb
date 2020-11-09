class Cli

  def welcome
    puts 'Hello, welcome to my app!'
  end

  def ask_users_name
    users_name = gets.strip
    puts "Good day, #{users_name}"
  end

  def display_each_beverage_name
    Beverage.all_beverage_names.each do |beverage_name|
      puts beverage_name
    end
  end

  def show_beverages
    puts 'Here are our existing beverages'
    display_each_beverage_name
  end

end
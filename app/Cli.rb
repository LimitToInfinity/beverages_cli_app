class Cli

  attr_reader :prompt, :username, :beverage_choice

  def initialize
    @username = ''
    @beverage_choice = ''
    @prompt = TTY::Prompt.new(symbols: { marker: '😂' })
  end

  def welcome
    puts 'Hello, welcome to my app!'
  end

  def ask_users_name
    @username = prompt.ask('What is your name?', default: 'guest')
    puts "Good day, #{username}"
  end

  def display_beverage beverage
    puts 'Here is your beverage'
    puts "name #{beverage.name}"
    puts "strength #{beverage.strength}"
  end

  def show_beverages
    @beverage_choice = prompt.select(
      'Choose your favorite drink?',
      Beverage.all.pluck(:name),
      filter: true
    )
    chosen_beverage = Beverage.find_by name: beverage_choice
    display_beverage chosen_beverage
  end

end
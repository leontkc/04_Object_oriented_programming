class Paperboy

  attr_accessor :name, :side

  def initialize(name, side)
    @name = name
    @side = side
  end

  def experience
    @deliveries.to_i
  end

  def quota
    50 + experience / 2
  end

  def deliver(start_address, end_address)
    @deliveries = (end_address - start_address) / 2
    @money = @deliveries * 0.25
  end

  def report
    "I'm #{@name}, I've delivered #{@deliveries} papers and I've earned $#{@money} so far"
  end

end

puts "What is the name of the paperboy?"
name = gets.chomp.to_s
side = ""
  until ['odd', 'even'].include?(side)
    puts "What side is he delivering on?"
    side = gets.chomp.to_s
  end



  # if @side != 'even'
  # else @side != 'odd'
  # end
  leon = Paperboy.new(name,side)
  puts leon.inspect
#puts 'What is the starting house number?'
#@start_address = gets.chomp.to_i
#   if @start_address.is_not_an_i

#experience thing
#restricting values in parameters

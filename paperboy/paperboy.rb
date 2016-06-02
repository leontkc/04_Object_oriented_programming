class Paperboy

  attr_accessor :name, :side, :quota

  def initialize(name, side, quota = 50)
    @name = name
    @side = side
    @quota = quota
  end

  def experience
    0
  end

  def deliver(start_address, end_address)
    if end_address.even? == start_address.even?
      @deliveries = ((end_address - start_address) / 2) + 1
    elsif end_address.odd? == start_address.even?
      @deliveries = ((end_address - start_address) / 2) + 1
    end
  end

  def earnings
    if @deliveries > quota
     (@deliveries - quota) * 0.5 + quota * 0.25
   else @deliveries * 0.25 - 2
   end
  end

  def report
    "I'm #{@name}, I've delivered #{@deliveries} papers and I've earned $#{earnings} so far"
  end

end


#code to put inputs and initialize it as an object
# puts "What is the name of the paperboy?"
# name = gets.chomp.to_s
# side = ""
#   until ['odd', 'even'].include?(side)
#     puts "What side is he delivering on?"
#     side = gets.chomp.to_s
#   end
#  leon = Paperboy.new(name,side)
#  puts leon.inspect

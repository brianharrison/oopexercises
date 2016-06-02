class Paperboy


attr_reader :earnings
attr_writer :name, :quota, :papers, :side


	def initialize (name,side)
		@name=name
		@quota=50
		@papers=0
		@side=side
		@earnings=0
	end

	def deliver(start, finish)
		deliveries = (finish-start)/2
		@papers += deliveries
		if @papers > @quota
			@earnings += 0.5*(deliveries-@quota) + 0.25*@quota
		elsif @papers == @quota
			@earnings = @papers*0.25
		else
			@earnings = (@papers*0.25) - 2
		end
	end

	def report
		puts "Hey, my name is #{@name}, I delivered #{@papers} papers and I earned $#{@earnings.to_f}"
	end

end


greg=Paperboy.new('greg', 'even')

greg.deliver(100, 160)

greg.report









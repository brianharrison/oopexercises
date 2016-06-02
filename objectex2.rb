class Paperboy


#attr writer :name, :quota, :papers, :side, :earnings


	def initialize (name,side)
		@name=name
		@quota=50
		@papers=0
		@side=side
		@earnings=0
	end

	def quota
		quota = (50 + (@papers/2)).to_i
	end

	def deliver(start, finish)
		deliveries = (finish-start)/2
		@papers = @papers + deliveries

	end
	def report
		puts "I delivered #{@papers} and my quota for next time is #{@quota}"
	end

	def earnings
		@earnings = (papers*0.25.to_f) + (papers.quota)
	end

end

greg=Paperboy.new('greg', 'even')

greg.deliver(100, 220)
greg.report









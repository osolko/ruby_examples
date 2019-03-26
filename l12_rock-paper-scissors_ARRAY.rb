option = [:rock ,:scissors , :paper]

loop do
puts "your move (r)ock / (s)cissors / (p)aper "
user = gets.strip
	if user == 'r'
		user = :rock
	elsif user == 's'
		user = :scissors
	else user == 'p'
		user = :paper
	end

comp = option[rand(0..2)]

matrix = [
	[:rock , :rock , :drawn],
	[:scissors , :scissors, :drawn],
	[:paper , :paper, :drawn],
	
	[:rock, :scissors , :firstwin],
	[:rock, :paper, :secondwin],
	
	[:scissors, :paper, :firstwin],
	[:scissors, :rock, :secondwin],

	[:paper, :rock , :firstwin],
	[:paper, :scissors, :secondwin]
]

puts "user #{user} -- comp #{comp}"


matrix.each do |arr|
	if arr [0] == user && arr [1] == comp 
			puts "drawn!!!" if arr[2] == :drawn
			puts "user win" if arr[2] == :firstwin
			puts 'comp win' if arr[2] == :secondwin
	end
	puts "\n\n"
end

end



			

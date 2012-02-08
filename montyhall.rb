#econding: utf-8

hits = 0;
10000.times do
	flag = ''
	
	#Setting the player's choice and the right choice randomly
	right_choice =  rand(3)+1
	first_choice = rand(3)+1
	
	#Setting the door that will be opened by the host. Remember it must be different from the door choosen by the player and from the winning door (the first two values selected before).
	door_excluded = rand(3)+1
	while (door_excluded == right_choice or door_excluded == first_choice)
		door_excluded = rand(3)+1
	end
	#Now, it sets the second choice, assuming that the player will always change his initial choice.
	second_choice = rand(3)+1
	while (second_choice == door_excluded or second_choice == first_choice)
		second_choice = rand(3)+1
	end
	#Here it increases the number of hit in case the second choice is right.
	if (second_choice == right_choice)
		hits+=1
		flag = 'HIT!'
	end
	#puts 'First choice: '+first_choice.to_s+' Second choice: '+second_choice.to_s+' Right choice: '+right_choice.to_s+' '+flag
end

puts 'Total hits: '+hits.to_s
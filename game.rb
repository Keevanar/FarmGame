board = Array.new()
player = {}
player = {
x: 5,
y: 5,
icon: "@",
old_x:0,
old_y:0
}

# Initialize the board
def paint_board(board_hash)
	for i in 0..9
		board_hash[i] = Array.new(10,"O")
	end
	return board_hash
end
# print the board
def print_board(board_hash)
	for i in board_hash
		p i
	end
end

def move_up(player_hash,amount)
	return player_hash[:x] += amount
end

def move_down(player_hash,amount)
	return player_hash[:x] -= amount
end

def move_left(player_hash,amount)
	return player_hash[:y] -= amount
end

def move_right(player_hash,amount)
	return player_hash[:y] += amount
end

def move_player(board_hash,player_hash)
	board_hash[player_hash[:x]][player_hash[:y]] = player_hash[:icon]
	return board_hash
end

def old_player_location(player_hash)
	# player[:old_x] = player[:x]
	# player[:old_y] = player[:y]
	# return player
end

def get_player_input(player_hash,board_hash)
	old_player_location(player_hash)
	p "Your turn!"
	p "What you want to do?"
	choice = gets.chomp
	case choice
	when 'w'
		move_up(player_hash,1)
	when 'a'
		move_left(player_hash,1)
	when 's'
		move_down(player_hash,1)
	when 'd'
		move_right(player_hash,1)
	end
end

paint_board(board)
while true
	print_board(board)
	get_player_input(board,player)
	move_player(board,player)
end

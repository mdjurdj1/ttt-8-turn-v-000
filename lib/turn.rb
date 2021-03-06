
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i
  index = user_input - 1
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == "" || board[index] == " "
    false
  end
end

def move(board, index, value = "X")
    board[index] = value
end

def turn(board)
  
  puts "Please enter 1-9:"
  user_input = gets
  index = input_to_index(user_input)
  
  if valid_move?(board, index)
    move(board, index, value = "X")
    display_board(board)
  else 
    puts "Invalid Move"
    display_board(board)
    turn(board)
  end

end


# Tic Tac Toe
#WIN_COMBINATIOSN constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottome row
  #------
  [0,3,6], # First column
  [1,4,7], # Second column
  [2,5,8], # Third column
  #------
  [0,4,8], # Left diagonal
  [2,4,6]  # Right diagonal
]

# initialize board array
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# display_board is the method to build the board for output
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts " -----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts " -----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, token)
  board[index] = token
end

def position_taken?(board, index)
  # check if board - index is empty -> " " && ""
  # ternary soution:
  (board[index] == " " || board[index] == "" || board[index] == nil) ?
    false : true
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  # ask the user for input
  puts "Please enter 1-9:"
  # gets the user input
  input = gets.strip
  # calls the input_to_index method
  index = input_to_index(input)
  # define token to current_player ("X" or "O"
  token = current_player(board))
  # validates the input correctly
  if valid_move?(board, index)
    # makes valid move
    move(board, index, token)
  else
    # ask for input again after a failed validation
    turn(board)
  end
  # display a correct board after a valid turn
  display_board(board)
end

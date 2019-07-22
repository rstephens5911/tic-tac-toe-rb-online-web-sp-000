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
  if index.between?(0,8) && !postition_taken?(board, index)
    true
  end
end

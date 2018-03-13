# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]

def won?(board)
<<<<<<< HEAD
  winner = false
  who_won = nil
  WIN_COMBINATIONS.each do |current_combination|
    if board[current_combination[0]] == "X" && board[current_combination[1]] == "X" && board[current_combination[2]] == "X"
      winner = current_combination
      who_won = "X"
    elsif board[current_combination[0]] == "O" && board[current_combination[1]] == "O" && board[current_combination[2]] == "O"
      winner = current_combination
      who_won = "O"
    end
  end
  return winner
end
    
def full?(board)
 board.none?{|blank_space| blank_space == " "} 
end

def draw?(board)
  if full?(board) == true && won?(board) == false
  return true
  else 
    return false
  end
end  
  
def over?(board)
  if full?(board) == true || won?(board) != false
    return true
  else return false
end
end

def winner(board)
winner = false
  who_won = nil
  WIN_COMBINATIONS.each do |current_combination|
    if board[current_combination[0]] == "X" && board[current_combination[1]] == "X" && board[current_combination[2]] == "X"
      winner = current_combination
      who_won = "X"
    elsif board[current_combination[0]] == "O" && board[current_combination[1]] == "O" && board[current_combination[2]] == "O"
      winner = current_combination
      who_won = "O"
    end
  end
  return who_won
end
=======
  WIN_COMBINATIONS.each do |current_combination|
    if board[current_combination[0]] == "X" && board[current_combination[1]] == "X" && board[current_combination[2]] == "X"
      return current_combination
    elsif board[current_combination[0]] == "O" && board[current_combination[1]] == "O" && board[current_combination[2]] == "O"
      return current_combination
    end
  end
end
    


=begin def won?(board)
  game_won_x = false
  game_won_o = false
  
  x_counter = 0
  x_array = []
  while x_counter < 9
   if board[x_counter] = "X"
     x_array << board[x_counter]
   end
   x_counter += 1
  end
  
  o_counter = 0
  o_array = []
  while o_counter < 9
   if board[counter] = "X"
     o_array << board[o_counter]

   end
   o_counter += 1
   end
  
  WIN_COMBINATIONS.each do |current_combination|
   if x_array.include?(current_combination[0]) && x_array.include?(current_combination[1]) && x_array.include?(current_combination[2])
       game_won_x = current_combination
    end
   end
   
   if game_won_x != []
     return game_won_x
   
   else
   WIN_COMBINATIONS.each do |current_combination|
   if o_array.include?(current_combination[0]) && o_array.include?(current_combination[1]) && o_array.include?(current_combination[2])
       game_won_o = current_combination
    end
   end
   return game_won_o
 end
=end
>>>>>>> 3a0f7c1d7ea06fb662ba9647b53acad57bf84afb

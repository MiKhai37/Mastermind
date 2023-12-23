# frozen_string_literal: true

require_relative 'board'

class Game
  # CODE_COLORS = ['RED', 'YELLOW', 'BLUE', 'PURPLE', 'GREEN', 'PINK']
  CODE_COLORS = [1, 2, 3, 4, 5, 6]
  CODE_SIZE = 4
  MAX_GUESS = 12
  def initialize(mode = 'computer')
    puts 'Welcome to Mastermind Game\n'
    @board = Board.new(CODE_COLORS, CODE_SIZE, MAX_GUESS)
    @mode = mode
    @code = Array.new
    @n_guess = 0
    computer_secret_code
    game_loop
  end

  def computer_secret_code
    CODE_SIZE.times do
      @code.append(CODE_COLORS.sample)
    end
    p @code
  end

  def game_loop
    until @n_guess >= MAX_GUESS
      p @n_guess
      @n_guess += 1
    end
  end
end

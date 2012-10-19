
require "ppt.rb"

def play
    loop do
      h = humanPlay
      c = computerPlay
      print "H: #{h}, C: #{c} => "
 
      # only update the human player's history after the computer has chosen
      @plays[h] += 1
 
      if h == c
        puts "draw"
      elsif h == @beats[c]
        puts "Human wins"
        @score[0] += 1
      else
        puts "Computer wins"
        @score[1] += 1
      end
      puts "score: human=#{@score[0]}, computer=#{@score[1]}"
    end
  end

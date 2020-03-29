@randEl = [:paper, :scissors, :rock]
rand1 = rand(0..@randEl.size-1)

@compWin = 0
@userWin = 0
@draw = 0


def userVariant s
  rand1 = rand(0..@randEl.size-1)

  if s == 'R'

    puts "User puts #{@randEl[2]}"
    puts"Comp puts #{@randEl[rand1]}."

    # draw? @randEl[2],@randEl[rand1]
    victory @randEl[2],@randEl[rand1]
    stat @randEl[2],@randEl[rand1]
  elsif s == 'S'

    puts "User puts #{@randEl[1]}"
    puts"Comp puts #{@randEl[rand1]}."

    # draw? @randEl[1],@randEl[rand1]
    victory @randEl[1],@randEl[rand1]
    stat @randEl[1],@randEl[rand1]
  elsif s == 'P'

    puts "User puts #{@randEl[0]}"
    puts"Comp puts #{@randEl[rand1]}."

    # draw? @randEl[0],@randEl[rand1]
    victory @randEl[0],@randEl[rand1]
    stat @randEl[0],@randEl[rand1]
  end
end

def draw? user, comp
    if user == comp
      puts "Draw."
      true
    end
end

def victory user, comp
  if user == @randEl[0] && comp == @randEl[2]
    puts "User win"
  elsif user == @randEl[1] && comp == @randEl[0]
    puts "User win"
  elsif user == @randEl[2] && comp == @randEl[1]
    puts "User win"
  elsif user == @randEl[0] && comp == @randEl[1]
    puts "Comp win"
  elsif user == @randEl[1] && comp == @randEl[2]
    puts "Comp win"
  elsif user == @randEl[2] && comp == @randEl[0]
    puts "Comp win"
  else
    puts "Draw"
  end
end


def stat user, comp

  if user == @randEl[0] && comp == @randEl[2]
    @userWin +=1

  elsif user == @randEl[1] && comp == @randEl[0]
    @userWin+=1
  elsif user == @randEl[2] && comp == @randEl[1]
    @userWin+=1
  elsif user == @randEl[0] && comp == @randEl[1]
    @compWin+=1
  elsif user == @randEl[1] && comp == @randEl[2]
    @compWin+=1
  elsif user == @randEl[2] && comp == @randEl[0]
    @compWin+=1
  else
    @draw+=1
  end

  if @compWin >= 3
    puts "Comp wins #{@compWin} times"
    exit
  elsif @userWin >= 3
    puts "User wins #{@userWin} times"
    exit
  elsif @draw > 1
    puts "Draw #{@draw} times. Game over!!!"
    exit
  end
    puts

end


count = 0
loop do

  print"(R)ock, (S)cissors, (P)aper?"
  s = gets.strip.capitalize
  # draw? @randEl[2], s
  count += 1
  puts
  userVariant(s)
  puts"------------------------------"
  puts "Statistic"
  puts "User win: #{@userWin}"
  puts "Comp wins: #{@compWin}"
  puts "Draw: #{@draw}"
  puts"------------------------------"
  puts


end

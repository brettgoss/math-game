class Round
  def initialize(p1, p2)
    @n1 = 0
    @n2 = 0
    @p1 = p1
    @p2 = p2
    @@cur_player = @p1
  end

  def turn
    puts "----- New Turn! -----"
    question
    answer
    score
    switch
  end

  def question
    @n1 = 1 + rand(10)
    @n2 = 1 + rand(10)
    puts "#{@@cur_player.name}: What does #{@n1} plus #{@n2} equal?"
    print "> "
  end

  def answer
    ans = gets.chomp.to_i
    if ans == @n1 + @n2
      puts "Ayyyy"
    else
      puts "soz, wrong"
      @@cur_player.lives -= 1
    end
  end

  def score
    puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
  end

  def switch
    @@cur_player = @@cur_player == @p1 ? @p2 : @p1
  end
end

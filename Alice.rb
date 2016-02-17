def start
    puts "You are Alice, who came to Wonderland and search enter for back home."
    puts "In front of you is pointer road. Which direction will you select: right, left or straight?"
    
    print "> "
    choice = $stdin.gets.chomp
    
    if choice == "right"
        dog_room
    elsif choice == "left"
        dragon_room
    else choice == "straight"
        puts "You fall to the cemetery, where live zombies."
        dead("They attacked you and eat your brain.")
    end
end


def dead(why)
    puts why, "Game over!"
    exit(0)
end


def rabbit_room
    puts "You are in another room where at the table having dinner rabbit."
    puts "What do you want to give rabbit to make him kindly?"
    rabbit_eating = false
    
    while true
        print "> "
        choice = $stdin.gets.chomp
        
        if choice == "carrot" && !rabbit_eating
            puts "Give me more food! - say rabbit."
        elsif choice == "cucumber" && !rabbit_eating
            puts "I'm very hungry! I want more food!"
            #rabbit_eating = true
        elsif choice == "grass" && !rabbit_eating
            puts "You cajole rabbit. He show the way to his burrow."
            rabbit_burrow
        else
            puts "Rabbit don't like this food."
        end
    end
end


def rabbit_burrow
    puts "What diameter in centimeters may have burrow Alice can pass through it? Please use natural numbers."
    
    print "> "
    circle = $stdin.gets.chomp
    
    if circle.include?("0") || circle.include?("1") || circle.include?("2") || circle.include?("3") || circle.include?("4") || circle.include?("5") || circle.include?("6") || circle.include?("7") || circle.include?("8") || circle.include?("9")
        diameter = circle.to_i
    else
        dead("Go to learn to type a number.")
    end
    
    if diameter > 100
        puts "Hurray! Alice went through the burrow!"
        puts "She back home!"
        exit(0)
    else
        dead("Alice stuck in the burrow and died of starvation.")
    end
end


def dog_room
    puts "Big oak door is opened. You came to big beautiful room."
    puts "In the middle of the room sleep big dog. If you don't want wake him you must to do steps."
    puts "How much steps do you do? Please use natural numbers."
    
    print "> "
    steps = $stdin.gets.chomp
    
    if steps.include?("0") || steps.include?("1") || steps.include?("2") || steps.include?("3") || steps.include?("4") || steps.include?("5") || steps.include?("6") || steps.include?("7") || steps.include?("8") || steps.include?("9")
        how_much = steps.to_i
    else
        dead("Go to learn to type numbers.")
    end
    
    if how_much > 20
        dead("Dog wake, becomes angry and eat you!")
    else 
        puts "Congratulations! You walked very quietly."
        puts "Do you go further?"
        
        print "> "
        choice = $stdin.gets.chomp
        
        if choice == "yes"
            rabbit_room
        else
            puts "You are going to start of adventures."
            start
        end
    end
end


def dragon_room
    puts "You came to dragon castle."
    puts "Snake crawls to you and and offers her help."
    puts "Are you agree?"
    
    print "> "
    choice = $stdin.gets.chomp
    
    if choice == "no"
        dead("Snake call dragon. They eat you. You are dying.")
    else
        puts "Snake shows you the way to the lake. There is no dangerous."
        puts "But she asks give her mice. Otherwise she will bite you."
        puts "How much mice do you give her? Please use natural numbers."
        
        print "> "
        choice = $stdin.gets.chomp
        
        if choice.include?("0") || choice.include?("1") || choice.include?("2") || choice.include?("3") || choice.include?("4") || choice.include?("5") || choice.include?("6") || choice.include?("7") || choice.include?("8") || choice.include?("9")
            number_mice = choice.to_i
        else
            puts "Go to learn to type a number."
        end
        
        if number_mice < 10
            dead("Snake bites you. You are dying.")
        else
            puts "Snake eat your mice and goes away."
            puts "You sea rabbit burrow near the lake."
            rabbit_burrow
        end
    end
end


start

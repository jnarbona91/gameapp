class MainController < ApplicationController
    def home
    end
    def magic8ball
        @question = params[:question]
        @answer =["Yes", "No", "Try Again Later", "Ehhh naaaaah", "What'd you say?", "Quite Possibly"].sample
        @final_answer
        if !@question.to_s.empty?
            @final_answer = @answer
        end
    end
    def high_low
        cookies[:number] = rand 10 if cookies[:number].nil?
        @secret_number = cookies[:number].to_i
        @guess = params[:guess]
        if !@guess.to_s.empty? && @secret_number == @guess.to_i
            @result = "You win!"
            cookies.delete :number
        elsif !@guess.to_s.empty? && @secret_number > @guess.to_i
            @result = "you low boi"
        elsif !@guess.to_s.empty? && @secret_number < @guess.to_i
            @result ="you high boi"
        end
    end
    def madlibs
        @adj = params[:adj]
        @adj2 = params[:adj2]
        @type_of_bird = params[:type_of_bird]
        @room_in_house = params[:room_in_house]
        @past_tense_verb = params[:past_tense_verb]
        @verb = params[:verb]
        @name = params[:name]
        @noun = params[:noun]
        @liquid = params[:liquid]
        @verb_ing = params[:verb_ing]
        @body_part = params[:body_part]
        @plural_noun = params[:plural_noun]
        @verbing = params[:verbing]
        @noun2 = params[:noun2]
        if !@noun2.to_s.empty?
            @madlib = "It was a #{@adj}, cold November day. I woke up to the #{@adj2} smell of #{@type_of_bird} roasting in the #{@room_in_house} downstairs. I #{@past_tense_verb} down the stairs to see if I could help #{@verb} the dinner. My mom said, See if #{@name} needs a fresh #{@noun}. So I carried a tray of glasses full of #{@liquid} into the #{@verb_ing} room. When I got there, I couldnt believe my #{@body_part}! There were #{@plural_noun} #{@verbing} on the #{@noun2}!"
        end
    end
end

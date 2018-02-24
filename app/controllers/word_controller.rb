class WordController < ApplicationController
  def quiz
    if request.post?
      @word = Word.find(params[:word_id])

      if params[:giveup]
        @word.log(:giveup)
      else
        if @word.check(params[:guess])
          @word.log(:success)
          flash[:success] = 'Right' # quite right!
          @word = Word.order("RANDOM()").first
        else
          @word.log(:fail)
          flash[:danger] = 'Nope' # Not quite right!
        end
      end

    else
      # @word = Word.order("RANDOM()").first
      # take the less tried word

      a = Word.all.sort {|x,y| x.tries.size <=> y.tries.size}
      @word = a.first
    end

    respond_to do |format|
      format.html
      format.js
    end
  end
end

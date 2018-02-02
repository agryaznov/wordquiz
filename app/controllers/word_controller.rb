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
      @word = Word.order("RANDOM()").first
    end

    respond_to do |format|
      format.html
      format.js
    end
  end
end

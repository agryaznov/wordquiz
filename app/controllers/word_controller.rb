class WordController < ApplicationController
  def quiz
    if request.post?
      @word = Word.find(params[:word_id])
      if @word.check(params[:guess])
        flash[:success] = 'Right' # quite right!
        @word = Word.order("RANDOM()").first
        render 'quiz'
      else
        flash[:danger] = 'Nope' # Not quite right!
        render 'quiz'
      end
    else
      @word = Word.order("RANDOM()").first
    end
  end
end

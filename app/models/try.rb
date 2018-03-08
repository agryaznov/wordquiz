class Try < ApplicationRecord
  belongs_to :word

  after_save :recalc_word_success_rate

  private

  def recalc_word_success_rate
    word.success_rate = word.tries.count == 0 ? 0 : word.tries.where(result: :success).count.to_d / word.tries.count.to_d
    word.save
  end

end

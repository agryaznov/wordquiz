class Word < ApplicationRecord
  def check(translation)
    rus == translation
  end
end

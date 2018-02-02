class Word < ApplicationRecord
  has_many :tries, dependent: :destroy

  def check(translation)
    rus == translation
  end

  def log(result)
    tries.create(result: result)
  end

end

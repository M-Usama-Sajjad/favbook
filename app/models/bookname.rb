class Bookname < ApplicationRecord
  belongs_to :authorname
  has_one_attached :image , dependent: :destroy


end

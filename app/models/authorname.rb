class Authorname < ApplicationRecord
  has_many :booknames , dependent: :destroy
  accepts_nested_attributes_for :booknames, allow_destroy: true
end

class Gist < ActiveRecord::Base
  attr_accessible :title, :gistfiles_attributes
  validates :title, :presence => true

  belongs_to :user
  has_many :gistfiles, :inverse_of => :gist
  accepts_nested_attributes_for :gistfiles
end

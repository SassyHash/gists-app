class Gist < ActiveRecord::Base
  attr_accessible :title, :gistfiles_attributes, :tag_ids, :points
  validates :title, :presence => true

  belongs_to :user
  has_many :votes
  has_many :gistfiles, :inverse_of => :gist
  has_many :taggings
  has_many :tags, :through => :taggings
  accepts_nested_attributes_for :gistfiles
  accepts_nested_attributes_for :taggings
end

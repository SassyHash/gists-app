class Tag < ActiveRecord::Base
  attr_accessible :label
  has_many :taggings
  has_many :gists, :through => :taggings
end

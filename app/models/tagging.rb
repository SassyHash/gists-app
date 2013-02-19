class Tagging < ActiveRecord::Base
  attr_accessible :gist_id, :tag_id, :user_id

  belongs_to :gist
  belongs_to :tag
  belongs_to :user

end

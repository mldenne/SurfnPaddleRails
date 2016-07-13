class Post < ActiveRecord::Base

  belongs_to :author

  validates_presence_of :title
  validates_presence_of :author

end

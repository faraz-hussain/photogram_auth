class Photo < ActiveRecord::Base

  belongs_to :user

  has_many :comments
  has_many :likes, :dependent => :destroy
  has_many :fans, :through => :likes, :source => :user

end

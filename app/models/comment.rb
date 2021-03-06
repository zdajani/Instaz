class Comment < ActiveRecord::Base
  include AsUserAssociationExtension
  
  belongs_to :photo
  belongs_to :user
  validates :thoughts, presence: true
  validates :photo_id, presence: true
  validates :user_id, presence: true
end

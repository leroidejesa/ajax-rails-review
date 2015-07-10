class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  # belongs_to :admin
  validates :title, :presence => true
  validates :content, :presence => true
  # validates :created_by, :presence => true
end

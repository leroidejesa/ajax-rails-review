class Project < ActiveRecord::Base
  belongs_to :skill

  validates :description, :presence  => true
  validates :name, :presence  => true
  validates :link, :presence  => true
end

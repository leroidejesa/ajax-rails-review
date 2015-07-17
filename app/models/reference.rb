class Reference < ActiveRecord::Base
  validates :name, :presence  => true
  validates :job_title, :presence  => true
  validates :email, :presence  => true
  validates :phone, :presence  => true
end

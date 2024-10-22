class LeadTime < ActiveHash::Base
  self.data = [{ id: 0, name: '---' }] + (1..365).map { |i| { id: i, name: i.to_s } } 

  include ActiveHash::Associations
  has_many :projects
end
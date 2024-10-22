class Project < ApplicationRecord

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :total_task
  belongs_to_active_hash :container_task
  belongs_to_active_hash :package_task
  belongs_to_active_hash :inner_box
  belongs_to_active_hash :outer_box
  belongs_to_active_hash :lead_time

  validates :category_id, :total_task_id, :container_task_id, :package_task_id, :inner_box_id, :outer_box_id, :lead_time_id, presence: true

  validates :category_id, numericality: { other_than: 1 } 
end

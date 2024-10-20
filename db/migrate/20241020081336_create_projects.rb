class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string   :customer, null: false
      t.string   :item_name, null: false
      t.string   :capacity, null: false
      t.date     :schedule, null: false
      t.text     :memo
      t.integer  :category_id, null: false
      t.integer  :total_task_id , null: false
      t.integer  :container_task_id, null: false
      t.integer  :package_task_id , null: false
      t.integer  :inner_box_task_id, null: false
      t.integer  :outer_box_task_id , null: false
      t.integer  :lead_time_id , null: false     
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end

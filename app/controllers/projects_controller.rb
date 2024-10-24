class ProjectsController < ApplicationController

  def index
    @projects = Project.order("created_at DESC")
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def article_params
    params.require(:project).permit(
      :customer,
      :item_name,
      :capacity,
      :schedule,
      :category_id,
      :total_task_id,
      :container_task_id,
      :package_task_id,
      :inner_box_task_id,
      :outer_box_task_id
      )
  end

end

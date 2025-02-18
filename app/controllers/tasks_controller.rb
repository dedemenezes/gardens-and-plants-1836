class TasksController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @task = Task.new
  end

  # One task per form:
  def create
    @plant = Plant.find(params[:plant_id])
    @task = Task.new(task_params)
    @task.plant = @plant
    @task.save
    redirect_to garden_path(@plant.garden)
  end


  private

  def task_params
    params.require(:task).permit(:chore_id)
  end
end

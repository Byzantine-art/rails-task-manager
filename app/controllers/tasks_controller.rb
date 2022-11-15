class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @tasks = Task.new(task_params)
    @tasks.save
  end


  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
  # def answer
  #   if params[:question] == "I am going to work"
  #     @answer = "Great!"
  #   elsif params[:question].include?("?")
  #     @answer = " Silly question, get dressed and go to work!"
  #   else
  #     @answer = "I don't care, get dressed and go to work!"
  #   end
  # end
end

class TasksController < ApplicationController
  def top
    @tasks = Task.all.order(category: :asc)
  end

  def newToDo
  end

  def detail
    @task = Task.find_by(id: params[:id])
  end

  def category
    @category =  params[:category]
  end

  def createToDo
    @task = Task.new(content: params[:content], category: params[:category])
    @task.save

    redirect_to("/")
  end

  def delete
    @task = Task.find_by(id: params[:id])
    @task.destroy

    redirect_to("/")
  end

  def deleteCategory
    @task = Task.find_by(category: params[:category])
    @task.destroy
    
    redirect_to("/")
  end

  def editCategory
  end

  def saveCategory
    @tasks = Task.find_by(category: "A")
    @task.update_all(category: params[:category])
    @task.save

    redirect_to("/")
  end
end

class TasksController < ApplicationController
  def index
    #html = display all blogs 
    @tasks = Task.all 
    #render :index 
  end

  def show
    #html = specific blog 
    @person = Person.find(params[:person_id])
    @tasks = @person.tasks 
    binding.pry 
    #render :show
  end

  def new
    #params come from URL 
    @person = Person.find(params[:person_id])
    @task = @person.tasks.new
    #@task = Task.new(person_id:params[:person_id]) 
    #render :new 
  end

  def create
    #POST REQUEST
    @person = Person.find(params[:person_id])
    @task = @person.tasks.new(task_param)
    if @task.save 
      redirect_to person_path(params[:person_id]) 
      #binding.pry
    else 
      render :new 
    end 
  end 

  def edit
    #html = form for existing blog post 
    @task = Task.find(params[:id]) 
    #render :edit
  end

  def update
    #render :update
    @task = Task.find(params[:id])
    if @task.update(task_param) 
      redirect_to people_path(params[:person_id])
    else
      render :edit 
    end 

  end 

  def destroy
    Task.destroy_all
    #ActiveRecord::Base.connection.reset_pk_sequence!(Task.table_name)
    redirect_to person_path(params[:person_id])
  end

  private 
    def task_param
      params.require(:task).permit(:title, :task)
    end 
end


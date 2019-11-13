class PeopleController < ApplicationController
  def index
    #html = display all blogs 
    @people = Person.all 
    #render :index 
  end

  def show
    #html = specific blog 
    @person = Person.find(params[:id]) 
    #@task = Task.find(1)
    #render :show
  end

  def new
    #html = form for new blog posts
    @person = Person.new
   
    #render :new 
  end

  def create
    #POST REQUEST
    @person = Person.new(person_param)
    if @person.save 
      redirect_to person_path(@person.id) 
    else 
      render :new 
    end 
  end 

  def edit
    #html = form for existing blog post 
    @person = Person.find(params[:id]) 
    #render :edit
  end

  def update
    #render :update
    @person = Person.find(params[:id])

    if @person.update(person_param) 
      redirect_to people_path(@person.id)
    else
      render :edit 
    end 

  end 

  def destroy
    Person.find(params[:id]).destroy 
    redirect_to people_path 
  end

  private 
    def person_param
      params.require(:person).permit(:first_name, :last_name, :age, :gender, :alive, :relative)
    end 
end

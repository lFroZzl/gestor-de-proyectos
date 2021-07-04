class ProjectsController < ApplicationController

  def index
    @selected_state = 'All'
    if params[:state].present? && params[:state] != 'All'
      @selected_state = params[:state]
      @projects = Project.where('state = ?', params[:state])
    else
      @projects = Project.all
    end
  end
  
  def new
    @project = Project.new
  end

  def create
    # Project.create(
    # name: params[:project][:name]
    # description: params[:project][:description]
    # state: params[:project][:state]
    # starts_on: params[:project][:starts_on]
    # ends_on: params[:project][:ends_on]
    # )

    project = Project.new(project_params)
    project.save

    redirect_to root_path

  end

  def project_params
    params.require(:project).permit(:name, :description, :state, :starts_on, :ends_on)
  end

end

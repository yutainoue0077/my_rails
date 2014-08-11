class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.modified_at = DateTime.now.to_datetime
    @project.created_at = DateTime.now.to_datetime if @project.created_at.nil?
    @project.save
    if @project.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.modified_at = DateTime.now.to_datetime
    @project.created_at = DateTime.now.to_datetime if @project.created_at.nil?
    if @project.update(project_params)
      redirect_to projects_path
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private

    def project_params
      params[:project].permit(:title,
                              :name,
                              :family_name,
                              :given_name,
                              :join_nexway,
                              :speciality,
                              :past_experience,
                              :hobby,
                              :favorite_food,
                              :join_recruit,
                              :email_address,
                              :phone_number,
                              :modified_at,
                              :created_at,
                              :image,
                              :updated_at)
    end



end

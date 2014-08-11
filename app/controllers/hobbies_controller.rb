class HobbiesController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @hobby = @project.hobbies.create(hobby_params)
    redirect_to project_path(@project.id)
  end

  def destroy
    @hobby = Hobby.find(params[:id])
    @hobby.destroy
    redirect_to project_path(params[:project_id])
  end

  private

  def hobby_params
    params[:hobby].permit(:hobby_japanese,

                          :hobby_id)
  end
end

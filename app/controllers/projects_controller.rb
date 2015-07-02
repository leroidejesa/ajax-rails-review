class ProjectsController < ApplicationController
  def show
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.find(params[:id])
  end

  def new
    @skill = Skill.find(params[:skill_id])
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.new(projects_params)
    if @project.save
      redirect_to skill_path(@project.skill)
    else
      render :new
    end
  end

  def edit
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.find(params[:id])
    @project.update(projects_params)
    redirect_to skill_path(@skill)
  end

  def destroy
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.find(params[:id])
    @project.destroy
    redirect_to skill_path(@skill)
  end

private
  def projects_params
    params.require(:project).permit(:description, :name, :link)
  end
end

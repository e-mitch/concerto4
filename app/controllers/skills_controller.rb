class SkillsController < ApplicationController
  
  def index
    @skills = Skill.all
  end
 
  def show
    @skill = Skill.find(params[:id])
  end
 
  def new
    @skill = Skill.new
  end
 
  def edit
    @skill = Skill.find(params[:id])
  end
 
  def create
    @skill = Skill.new(skill_params)
    @skill.user_id = current_user.id
    @skill.username = current_user.username
 
    if @skill.save
      redirect_to '/myprofile'
    else
      render 'new'
    end
  end
 
  def update
    @skill = Skill.find(params[:id])
 
    if @skill.update(skill_params)
      redirect_to '/myprofile'
    else
      render 'edit'
    end
  end
 
  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
 
    redirect_to '/myprofile'
  end
 
  private
    def skill_params
      params.require(:skill).permit(:variety, :genre, :experience, :details)
    end
end


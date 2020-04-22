class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end
 
  def show
    @profile = Profile.find(params[:id])
     @userSkills = []  
    skills = Skill.all
    x=0
    while x < skills.length
      if skills[x].user_id == current_user.id
        @userSkills.push(skills[x])
      end
      x +=1
    end
  end
 
  def new
    @profile = Profile.new
  end
  
 
  def view    
    current_profile = nil
    profiles = Profile.all
    x = 0
    if logged_in?
      while x < profiles.length
        if profiles[x].id == current_user.id
          current_profile = profiles[x]
        end
        x += 1
      end
      if current_profile == nil
        redirect_to '/profiles/new'
      end
       @profile = current_profile
     @userSkills = []  
    skills = Skill.all
    x=0
    while x < skills.length
      if skills[x].user_id == current_user.id
        @userSkills.push(skills[x])
      end
      x +=1
    end
    else
      redirect_to '/login'
    end
  end
  
  
  def edit
    if logged_in?
      current_profile = nil
      profiles = Profile.all
      x = 0
      while x < profiles.length
        if profiles[x].user_id == current_user.id
          current_profile = profiles[x]
        end
        x += 1
      end
    @profile = current_profile
      if current_user.id != @profile.user_id
        redirect_to '/noaccess'
      end
    else
      redirect_to :controller => 'sessions', :action => 'new'
    end
  end
  
  def create
     @profile = Profile.new(profile_params)
     @profile.id = current_user.id
  if @profile.save
    redirect_to '/skills/new'
  else
    render 'new'
  end
  end
 
  def update
    @profile = Profile.find(params[:id])
 
    if @profile.update(profile_params)
      redirect_to @profile
    else
      render 'edit'
    end
  end
 
  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
 
     respond_to do |format|
       format.html {redirect_to profiles_path}
       format.json {head :no_content}
       format.js {render :layout => false}
     end
  end
  
  def access
    render 'access'
  end
 
  private
    def profile_params
      params.require(:profile).permit(:name, :email, :bio, :interests, :soundcloud, :youtube, :spotify)
    end
end
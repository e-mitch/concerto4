class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end
 
  def show
    @profile = Profile.find(params[:id])
  end
 
  def new
    @profile = Profile.new
  end
 
  def view
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
  end
  
  def edit
    if logged_in?
      @profile = Profile.find(params[:id])
      if current_user.id != @profile.user_id
        redirect_to '/noaccess'
      end
    else
      redirect_to :controller => 'sessions', :action => 'new'
    end
  end
 
  def create
   ## @profile = Profile.new(profile_params)
 
    ## user = User.find(profile_params[:user_id])
    ## @profile.build_user(:id  => user.id)   
    
   ## if @profile.save
     ## redirect_to @profile
   ## else
     ### render 'new'
   ## end
     @profile = Profile.new(profile_params)
     @profile.user_id = current_user.id
 
  if @profile.save
    redirect_to @profile
    current_user.save
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
 
    redirect_to profiles_path
  end
  
  def access
    render 'access'
  end
 
  private
    def profile_params
      params.require(:profile).permit(:name, :email, :bio, :interests)
    end
end

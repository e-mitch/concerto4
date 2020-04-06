class SearchesController < ApplicationController
 def new
   @skills = Skill.all
    @skillsArray = ["  "]
    skills = Skill.all
    x = 0
    while x < skills.length
      @skillsArray.push(skills[x].variety)
      x += 1
    end
    @skillsArray = @skillsArray.uniq
    
    @genresArray = ["  "]
    skills = Skill.all
    y = 0
    while y < skills.length
      @genresArray.push(skills[y].genre)
      y += 1
    end
    @genresArray = @genresArray.uniq 
  end
  
  def searchResults
    @skills = Skill.all
  end
  
  private
  def search_params 
    params.require(:skill).permit(:variety, :genre, :experience) 
  end
end
  
  

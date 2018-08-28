class ProfilesController < ApplicationController
  before_action :set_profile, only: [:index, :show]
  
  def new
    @profile = Profile.new
    @notice = [1, 2,12,17,24,34,40,47,52,54,55,60,69,78,81,84,88,90,93,95,101,103,105]
  end
  
  def create
    @profile = Profile.new(profile_params)
    if @profile.save
       redirect_to my_page_url
    else
      render "new"
    end
  end
  
  def update
    
  end
  
  def edit
    @graduation = current_user.graduation.update(graduation_params)
    redirect_to my_page_url
    
  end
  
  def index
    @x = 1
    if current_user.graduation.nil?
    else
      @graduation = current_user.graduation
      @count = current_user.graduation.attributes.values.count(true)
    end
  end
  
  private
  def set_profile
    @profile = current_user.profile
  end
  
  def profile_params
      params.require(:profile).permit(:name, :year, :major_id, :minor_id, :semester, :user_id)
  end
  
  def graduation_params
      params.require(:graduation).permit(:f1, :f2, :f3, :f4, :f5, :f6, :f7, :f8, :f9, :f10, :f11, :f12, :f13, :f14, :f15, :f16, :f17, :f18, :f19, :f20,
                                         :s1, :s2, :s3, :s4, :s5, :s6, :s7, :s8, :s9, :s10, :s11, :s12, :s13, :s14, :s15, :s16, :s17, :s18, :s19, :s20,
                                         :c1, :c2, :c3, :c4, :c5, :c6, :c7, :c8, :c9, :c10)
  end

end

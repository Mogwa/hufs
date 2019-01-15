class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: [:index, :show]
  
  def new
    if !current_user.profile.nil?
      redirect_to root_path
    else
    end
    @profile = Profile.new
    @majors = Major.all
    @campuses = Campus.all
  end
  
  def create
    @profile = Profile.new(profile_params)
    if @profile.save
       redirect_to my_page_url
    else
      render "new"
    end
  end

  def profile_edit
    @profile = current_user.profile
  end
  
  def update
    @profile = current_user.profile
    if @profile.update(profile_params)
      redirect_to authenticated_root_path
    else
      render edit_profile_url
    end
  end

  # def reset_graduation
  #   @reset = current_user.graduation
  #   x = 1
  #   while x < 41
  #     @reset.update(f{}: nil)
  #     x += 1
  #   end
  #   @reset.save
  #   redirect_to root_path
  # end
  
  def edit
    @graduation = current_user.graduation.update(graduation_params)
    redirect_to my_page_url
  end
  
  def index
    if current_user.profile.nil?
      redirect_to new_profile_path
    else
      if current_user.graduation.nil?
      else
        @graduation = current_user.graduation
        @count = current_user.graduation.attributes.values.count(true)
      end
    end
  end
  
  private
  def set_profile
    @profile = current_user.profile
  end
  
  def profile_params
      params.require(:profile).permit(:name, :year, :major_id, :minor_id, :semester, :user_id, :campus, :minor_campus, :study_type, :major_campus)
  end
  
  def graduation_params
      params.require(:graduation).permit(:f1, :f2, :f3, :f4, :f5, :f6, :f7, :f8, :f9, :f10, :f11, :f12, :f13, :f14, :f15, :f16, :f17, :f18, :f19, :f20, :f21, :f22, :f23, :f24, :f25, :f26, :f27, :f28, :f29, :f30, :f31, :f32, :f33, :f34, :f35, :f36, :f37, :f38, :f39, :f40,
                                         :s1, :s2, :s3, :s4, :s5, :s6, :s7, :s8, :s9, :s10, :s11, :s12, :s13, :s14, :s15, :s16, :s17, :s18, :s19, :s20, :s21, :s22, :s23, :s24, :s25, :s26, :s27, :s28, :s29, :s30, :s31, :s32, :s33, :s34, :s35, :s36, :s37, :s38, :s39, :s40,
                                         :c1, :c2, :c3, :c4, :c5, :c6, :c7, :c8, :c9, :c10, :c21, :c22, :c23, :c24, :c25, :c26, :c27, :c28, :c29, :c30, :common_points, :first_points, :second_points)
  end

end

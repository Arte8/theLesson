class Instructor::SectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_course
# < HEAD
# =======
  def new
    @section = Section.new
    end

  def create
    @course = Course.find(params[:course_id])
    @section = @course.sections.create(section_params)
    redirect_to instructor_course_path(@course)
  end

  private

  def require_authorized_for_current_course
    if current_course.user != current_user
      render plain: "Unauthorized", status: :unauthorized
    end
  end

  helper_method :current_course
  def current_course
    @current_course ||= Course.find(params[:course_id])
  end

  def section_params
    params.require(:section).permit(:title)
  end
 # ad98e7a0316f14abad8a2cfcbca8a799a1e2cba0
end

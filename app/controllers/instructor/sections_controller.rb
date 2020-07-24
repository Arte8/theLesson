class Instructor::SectionsController < ApplicationController
<<<<<<< HEAD
=======
  def new
    @course = Course.find(params[:course_id])
    @section = Section.new
    end
    def create
    @course = Course.find(params[:course_id])
    @section = @course.sections.create(section_params)
    redirect_to instructor_course_path(@course)
  end

  private

  def section_params
    params.require(:section).permit(:title)
  end
>>>>>>> ad98e7a0316f14abad8a2cfcbca8a799a1e2cba0
end

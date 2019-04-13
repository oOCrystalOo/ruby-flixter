class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_enrollment
  
  def show
  end
  
  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
  def check_enrollment 
    unless current_user && current_user.enrolled_in?(current_lesson.section.course)
      flash.alert = "You are not enrolled in this course"
      redirect_to course_path(current_lesson.section.course)
    end
  end
end

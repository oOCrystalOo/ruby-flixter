class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_enrollment
  
  def show
  end
  
  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
  
  # Check if user is enrolled in course, or if is instructor
  def check_enrollment 
    unless current_user && (current_user.enrolled_in?(current_lesson.section.course) || current_user === current_lesson.section.course.user)
      flash.alert = "You are not enrolled in this course"
      redirect_to course_path(current_lesson.section.course)
    end
    
    if current_user === current_lesson.section.course.user
      flash.notice = "You are viewing your lesson as a student"
    end
  end
end

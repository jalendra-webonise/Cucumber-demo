class Admin::MiniLessonsController < ApplicationController
  before_filter :get_workshop
  before_filter :get_mini_lesson, except: [:new, :index, :create]
  def new
    @mini_lesson = @workshop.mini_lessons.new()
  end

  def create
    @mini_lesson = @workshop.mini_lessons.new(params[:mini_lesson])
    if @mini_lesson.save
      redirect_to admin_workshop_path(@workshop)
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @mini_lesson.update_attributes(params[:mini_lesson])
      redirect_to admin_workshop_mini_lesson_path(@workshop,@mini_lesson)
    else
      render :edit
    end
  end

  private
  def get_workshop
    @workshop = Workshop.find(params[:workshop_id])
  end

  def get_mini_lesson
    @mini_lesson = @workshop.mini_lessons.find(params[:id])
  end

end

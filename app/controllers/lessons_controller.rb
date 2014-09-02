class LessonsController < ApplicationController
  def index
    @lesson = Lesson.all
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html')
  end

  def new
    @lesson = Lesson.new
    render('lessons/new.html.erb')
  end
end

class LessonsController < ApplicationController
  def index
    @lesson = Lesson.all
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html')
  end
end

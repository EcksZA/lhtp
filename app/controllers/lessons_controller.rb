class LessonsController < ApplicationController
  def index
    @lesson = Lesson.all.sort_by(&:number)
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

  def create
  @lesson = Lesson.new(params[:lesson])
    if @lesson.save

    redirect_to("/lessons")
    else
      render('lessons/new.html.erb')
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])

    if @lesson.update(params[:lesson])
      redirect_to("/lessons/#{@lesson.id}")
    else
      render('lessons/edit.html.erb')
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    render('lessons/destroy.html.erb')
  end
end

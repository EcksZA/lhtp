class SectionsController < ApplicationController
  def index
    @section = Section.all
    render('sections/index.html.erb')
  end

  def show
    @section.find(params[:id])
    render('sections/show.html.erb')
  end

  def new
    @section = Section.new
    render('sections/new.html.erb')
  end
end

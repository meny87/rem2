class Admin::StoriesController < ApplicationController
  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stories }
    end
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
    @story = Story.find(params[:id])
    @stat = Status.where(:id => @story.status_id).first.descripcion
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @story }
    end
  end
end

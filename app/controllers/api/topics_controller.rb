class Api::TopicsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @topics = Topic.all
    render "index.json.jbuilder"
  end

  def show
    @topic = Meeting.find(params[:id])
    render "show.json.jbuilder"
  end

  def create
    @topic = Meeting.new(
    title: params[:title],
    agenda: params[:agenda],
    time: params[:time],
    location: params[:location],
    remote: params[:remote],
    speaker_id: params[:speaker_id]
    )
    
    if @topic.save
      render "show.json.jbuilder"
    else
      render json: {errors: @topic.errors.full_message}, status: :unprocessable_entity 
    end
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.name = params[:name] || @topic.name
    @topic.meeting_id = params[:meeting_id] || @topic.meeting_id

    if @topic.save
      render "show.json.jbuilder"
    else
      render json: {errors: @topic.errors.full_message}, status: :unprocessable_entity 
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    render json: {message: "topic destroyed"}
  end
end

class Api::MeetingsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @meetings = Meeting.order(id: :asc)
    render "index.json.jbuilder"
  end

  def show
    @meeting = Meeting.find(params[:id])
    render "show.json.jbuilder"
  end

  def create
    @meeting = Meeting.new(
    title: params[:title],
    agenda: params[:agenda],
    time: params[:time],
    location: params[:location],
    remote: params[:remote],
    speaker_id: params[:speaker_id]
    )
    
    if @meeting.save
      render "show.json.jbuilder"
    else
      render json: {errors: @meeting.errors.full_message}, status: :unprocessable_entity 
    end
  end

  def update
    @meeting = Meeting.find(params[:id])
    @meeting.title = params[:title] || @meeting.title
    @meeting.agenda = params[:agenda] || @meeting.agenda
    @meeting.time = params[:time] || @meeting.time
    @meeting.location = params[:location] || @meeting.location
    @meeting.remote = params[:remote] || @meeting.remote
    @meeting.speaker = params[:speaker] || @meeting.speaker

    if @meeting.save
      render "show.json.jbuilder"
    else
      render json: {errors: @meeting.errors.full_message}, status: :unprocessable_entity 
    end
  end

  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
    render json: {message: "meeting destroyed"}
  end

end
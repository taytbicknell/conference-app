class Api::MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
    if params[:search]
      @meetings = Meeting.where("id LIKE ? OR title LIKE ? OR agenda LIKE ? OR time LIKE ? OR location LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
    end
    @meetings = @meetings.order(id: :asc)
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
    remote: params[:remote]
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
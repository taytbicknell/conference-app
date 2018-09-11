class Api::MeetingsController < ApplicationController

  def all_meetings_method 
    @meetings = Meeting.all
    render "all_meetings.json.jbuilder"
  end     

  def first_meeting_method 
    @product = Meeting.find_by(id: 1)
    render "first_meeting.json.jbuilder"
  end

  def second_meeting_method 
    @meeting = Meeting.find_by(id: 2)
    render "second_meeting.json.jbuilder"
  end

  def last_meeting_method 
    @meeting = Meeting.find_by(id: 4)
    render "last_meeting.json.jbuilder"
  end

  def query_params_method
    input_value = params["message"]
    @message = "Message says #{input_value}"
    render "query_params.json.jbuilder"
  end

  def index
    @meetings = Meeting.all
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
    time: params[:time]
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
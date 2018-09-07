class Api::SpeakersController < ApplicationController

  def all_speakers_method 
    @speakers = Speaker.all
    render "all_speakers.json.jbuilder"
  end

  def first_speaker_method 
    @product = Speaker.find_by(id: 1)
    render "first_speaker.json.jbuilder"
  end

  def second_speaker_method 
    @speaker = Speaker.find_by(id: 2)
    render "second_speaker.json.jbuilder"
  end

  def last_speaker_method 
    @speaker = Speaker.find_by(id: 4)
    render "last_speaker.json.jbuilder"
  end

  def query_params_method
    input_value = params["message"]
    @message = "Message says #{input_value}"
    render "query_params.json.jbuilder"
  end

  def index
    @speakers = Speaker.all
    render "index.json.jbuilder"
  end

  def show
    @speaker = Speaker.find(params[:id])
    render "show.json.jbuilder"
  end

  def create
    @speaker = Speaker.new(
    first_name: params[:first_name],
    middle_name: params[:middle_name],
    last_name: params[:last_name],
    phone: params[:phone],
    email: params[:email],
    image_url: params[:image_url],
    bio: params[:bio]
    )
    if @speaker.save
      render "show.json.jbuilder"
    else
      render json: {errors: @speaker.errors.full_message}, status: :unprocessable_entity 
    end
  end

  def update
    @speaker = Speaker.find(params[:id])
    @speaker.first_name = params[:first_name] || @speaker.first_name
    @speaker.middle_name = params[:middle_name] || @speaker.middle_name
    @speaker.last_name = params[:last_name] || @speaker.last_name
    @speaker.phone = params[:phone] || @speaker.phone
    @speaker.email = params[:email] || @speaker.email
    @speaker.image_url = params[:image_url] || @speaker.image_url
    @speaker.bio = params[:bio] || @speaker.bio


    if @speaker.save
      render "show.json.jbuilder"
    else
      render json: {errors: @speaker.errors.full_message}, status: :unprocessable_entity 
    end
  end

  def destroy
    @speaker = Speaker.find(params[:id])
    @speaker.destroy
    render json: {message: "Speaker destroyed"}
  end
end
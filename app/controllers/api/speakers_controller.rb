class Api::SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all
    if params[:search]
      @speakers = Speaker.where("id LIKE ? OR first_name LIKE ? OR middle_name LIKE ? OR last_name LIKE ? OR phone LIKE ? OR email LIKE ? OR bio LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
    end
    @speakers = @speakers.order(id: :asc)
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
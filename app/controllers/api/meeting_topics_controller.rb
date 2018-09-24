class Api::MeetingTopicsController < ApplicationController
  def create
    @meeting_topic = MeetingTopic.new(
    topic_id: params[:topic_id],
    meeting_id: params[:meeting_id]
    )
    
    if @meeting_topic.save
      render "show.json.jbuilder"
    else
      render json: {errors: @meeting_topic.errors.full_message}, status: :unprocessable_entity 
    end
  end
  
end

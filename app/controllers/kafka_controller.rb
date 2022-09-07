class KafkaController < ApplicationController
  protect_from_forgery with: :null_session

  def example
    Karafka.producer.produce_sync(topic: 'example', payload: params.to_json)
    render json: { success: true }

  end

  def another
    Karafka.producer.produce_sync(topic: 'another', payload: params.to_json)
    render json: { success: true }

  end

  def email
    render json: { success: false, error: 'name and email params are mandatory'} and return unless (email_params[:name] && email_params[:email])
    ExampleMailer.greetings(email_params).deliver_later

    render json: { success: true }
  end

  private

  def email_params
    params.permit(:name, :email)
  end
end

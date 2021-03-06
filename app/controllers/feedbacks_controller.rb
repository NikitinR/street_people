class FeedbacksController < ApplicationController
  layout false

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    if @feedback.valid?
      FeedbackMailer.feedback(@feedback).deliver
      render status: :created, text: '<h3>Thank you for feedback!</h3>'
      @feedback.save
    else
      @error_message = "Please enter your #{@feedback.subject.to_s.downcase}"

      # Returns the whole form back. This is not the most effective
      # use of AJAX as we could return the error message in JSON, but
      # it makes easier the customization of the form with error messages
      # without worrying about the javascript.
      render action: 'new', status: :unprocessable_entity
    end
  end

  private
  def feedback_params
    params.require(:feedback).permit(:subject, :email, :comment)
  end
end

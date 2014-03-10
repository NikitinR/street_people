class FeedbackMailer < ActionMailer::Base
  default from: 'noreply@localhost'

  def feedback(feedback)
    @feedback = feedback
    mail(to: 'mr.andrey.repin@yandex.ua', subject: '[Feedback for YourSite] #{feedback.subject}')
  end
end
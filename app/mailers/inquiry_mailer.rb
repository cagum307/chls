class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail to: 'cagum307@gmail.com', subject: 'お問い合わせ通知'
  end
end
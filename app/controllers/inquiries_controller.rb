class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save && InquiryMailer.send_mail(@inquiry).deliver
      flash[:success] = 'お問い合わせを受け付けました'
      redirect_to root_path
    else
      flash.now[:danger] = 'お問い合わせを送信できませんでした。'
      render action: :new
    end
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:name, :message, :email, :email_confirmation)
  end
end

class NoticesController < ApplicationController
  protect_from_forgery except: :notifications

  def create
    #p notice_params
    @notice = Notice.new(notice_params)
    #respond_to do |format|
      if @notice.save
        #format.html { redirect_to root_path }
        redirect_to root_path
      end
    #end
  end
  def notifications
    @notices = Notice.where(recipient: current_user)
    # respond_to do |format|
    #   format.js
    # end
    render template: "notices/notifications.js.erb"
  end
  private
  def notice_params
    params.require(:notice).permit(:body, :sender_id, :recipient_id)
  end
end
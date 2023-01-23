class CommentNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  # param :post

  # Define helper methods to make rendering easier.
  #
  def comment
    params[:message]
  end

  def creator
    comment.user
  end

  def post
    comment.post
  end

  def url
    post_path(params[:post])
  end
end

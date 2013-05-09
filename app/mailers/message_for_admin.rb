class MessageForAdmin < ActionMailer::Base
  default from: "Sam Ruby <ialexey.kondratenko@gmail.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_for_admin.m_errors.subject
  #
  def m_errors(message)
    @message = message
    mail to: "alexey.kondratenko@mail.ru", subject: "Error"
  end
end

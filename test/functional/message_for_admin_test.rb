require 'test_helper'

class MessageForAdminTest < ActionMailer::TestCase
  test "m_errors" do
    mail = MessageForAdmin.m_errors
    assert_equal "M errors", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

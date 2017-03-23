class DailySummary
  def send_daily_summary(user_email, todays_messages)
    message_count = todays_messages.count
    thread_count  = todays_messages.map { |m| m[:thread_id] }.uniq.count
    subject       = 'Your daily message summary'
    body          = "You missed #{message_count} messages " \
                    "in #{thread_count} threads today"

    deliver(email: user_email, subject: subject, body: body)
  end

  def deliver(email:, subject:, body:)
    # send the message via SMTP
  end
end

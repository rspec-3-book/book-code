require 'daily_summary'

RSpec.describe DailySummary do
  let(:todays_messages) do
    [
      { thread_id: 1, content: 'Hello world' },
      { thread_id: 2, content: 'I think forums are great' },
      { thread_id: 2, content: 'Me too!' }
    ]
  end

  it "sends a summary of today's messages and threads" do
    summary = DailySummary.new

    expect(summary).to receive(:deliver).with(
      hash_including(body: 'You missed 3 messages in 2 threads today')
    )

    summary.send_daily_summary('user@example.com', todays_messages)
  end
end


require_relative "../lib/emoji_logger"

RSpec.describe EmojiLogger::Logger do
  it "has a version number" do
    expect(EmojiLogger::VERSION).not_to be nil
  end

  it "logs an info message with emoji" do
    logger = EmojiLogger::Logger.new
    expect { logger.info("Hello") }.to output(/🟢 \[INFO\] Hello/).to_stdout
  end

  it "logs an error message with emoji" do
    logger = EmojiLogger::Logger.new
    expect { logger.error("Oops") }.to output(/🔴 \[ERROR\] Oops/).to_stdout
  end
end
# lib/emoji_logger.rb
# frozen_string_literal: true

require_relative "emoji_logger/version"

module EmojiLogger
  class Logger
    EMOJIS = {
      info: "🟢",
      warn: "⚠️",
      error: "🔴",
      debug: "🐞"
    }.freeze

    def info(message)
      log(:info, message)
    end

    def warn(message)
      log(:warn, message)
    end

    def error(message)
      log(:error, message)
    end

    def debug(message)
      log(:debug, message)
    end

    private

    def log(level, message)
      emoji = EMOJIS[level] || "💬"
      puts "#{emoji} [#{level.to_s.upcase}] #{message}"
    end
  end
end

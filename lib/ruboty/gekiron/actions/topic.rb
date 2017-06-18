require 'yaml'
require 'nkf'

module Ruboty
  module Gekiron
    module Actions
      class Topic < Ruboty::Actions::Base
        def call
          message.reply(gekiron_topic)
        rescue => e
          message.reply(e.message)
        end

        private

        def topic
          path = File.expand_path(ENV['TOPICS_YML'] || './config/topics.yml')
          YAML.load_file(path).sample if File.exist?(path)
        end

        def first_letter
          # 小文字, 濁音, ['を', 'ん'] を除く
          [*'ｱ'..'ﾜ'].map{ |chr| NKF.nkf('-h1w', NKF.nkf('-Xw', chr)) }.sample
        end

        def gekiron_topic
          if topic.nil?
            'Topic does not exist :cry: (default path: ./config/topics.yml)'
          else
            "「#{first_letter}」から始まる、#{topic}は？"
          end
        end
      end
    end
  end
end

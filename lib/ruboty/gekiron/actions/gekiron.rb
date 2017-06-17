require 'yaml'
require 'nkf'

module Ruboty
  module Gekiron
    module Actions
      class Gekiron < Ruboty::Actions::Base
        TOPICS = YAML.load_file('./ruboty/gekiron/config/topics.yml')

        def call
          message.reply(gekiron_topic)
        rescue => e
          message.reply(e.message)
        end

        private

        def topic
          TOPICS.sample
        end

        def hiragana
          # 小文字, 濁音, ['を', 'ん'] を除く
          [*'ｱ'..'ﾜ'].map{ |chr| NKF.nkf('-h1w', NKF.nkf('-Xw', chr)) }.sample
        end

        def gekiron_topic
          "「#{hiragana}」から始まる#{topic}は？"
        end
      end
    end
  end
end

module Ruboty
  module Gekiron
    module Actions
      class Gekiron < Ruboty::Actions::Base
        def call
          message.reply(gekiron_topic)
        rescue => e
          message.reply(e.message)
        end
      end
    end
  end
end

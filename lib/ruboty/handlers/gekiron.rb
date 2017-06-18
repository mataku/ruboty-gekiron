module Ruboty
  module Handlers
    class Gekiron < Base
      on(
        /topic/,
        name: 'topic',
        description: '激論しそうな話題を返します'
      )

      def topic(message)
        Ruboty::Gekiron::Actions::Topic.new(message).call
      end
    end
  end
end

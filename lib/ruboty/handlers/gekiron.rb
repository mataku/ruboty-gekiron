module Rubory
  module Handlers
    class Gekiron < Base
      on(
        /gekiron|激論/,
        name: 'gekiron',
        description: '激論しそうな話題を返します'
      )

      def gekiron(message)
        message.reply('')
      end
    end
  end
end

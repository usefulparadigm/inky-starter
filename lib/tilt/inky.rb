require 'tilt/template'
require 'inky'

module Tilt
  class InkyTemplate < Template
    self.default_mime_type = 'text/html'

    def prepare
    end

    def evaluate(scope, locals, &block)
      @output ||= Inky::Core.new.release_the_kraken(data)
    end
    
    def allows_script?
      false
    end
  end
end
module HttpAcceptLanguage
  class Middleware

    def initialize(app)
      @app = app
    end

    def call(env)
      def env.http_accept_language
        self['http_accept_language.parser'] ||= Parser.new(self['HTTP_ACCEPT_LANGUAGE'])
      end
      @app.call(env)
    end

  end
end

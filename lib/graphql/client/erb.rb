# frozen_string_literal: true
require 'action_view'
require 'graphql/client/erubi_enhancer'

module GraphQL
  class Client
    class ERB < ActionView::Template::Handlers::ERB::Erubi
      include GraphQL::Client::ErubiEnhancer
    end
  end
end

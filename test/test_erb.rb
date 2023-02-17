# frozen_string_literal: true
require "erubi"
require "graphql"
require "graphql/client/erb"
require "graphql/client/erubi_enhancer"
require "graphql/client/view_module"
require "minitest/autorun"

class TestERB < MiniTest::Test
  class ErubiEngine < Erubi::Engine
    include GraphQL::Client::ErubiEnhancer
  end

  def test_no_graphql_section
    src = <<-ERB
      <%= 42 %>
    ERB
    assert_nil GraphQL::Client::ViewModule.extract_graphql_section(src)
  end

  def test_erubi_graphql_section
    src = <<-ERB
      <%# Some comment %>
      <%graphql
        query {
          viewer {
            login
          }
        }
      %>
      <%= 42 %>
    ERB

    engine = ErubiEngine.new(src)
    assert_equal "42", eval(engine.src).strip # rubocop:disable Security/Eval
  end
end

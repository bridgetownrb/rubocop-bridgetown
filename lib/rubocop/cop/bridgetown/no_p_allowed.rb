# frozen_string_literal: true

module RuboCop
  module Cop
    module Bridgetown
      class NoPAllowed < Cop
        MSG = "Avoid using `p` to print things. Use `Bridgetown.logger` instead."

        def_node_search :p_called?, "(send _ :p _)"

        def on_send(node)
          add_offense(node, :location => :selector) if p_called?(node)
        end
      end
    end
  end
end

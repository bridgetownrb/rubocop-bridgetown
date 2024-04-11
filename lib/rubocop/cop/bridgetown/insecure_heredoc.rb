# frozen_string_literal: true

module RuboCop
  module Cop
    module Bridgetown
      class InsecureHeredoc < Cop
        include Heredoc

        MSG = "Insecure heredoc detected. Use `html`, `html_map`, `html_attributes`, `text`, " \
              "or `render` inside interpolations."

        def on_heredoc(node)
          return unless node.source.match?(%r!(HTML|MARKDOWN)$!) &&
            heredoc_body(node).match?(
              %r%[^\\]#\{(?!\s*?(html|html_map|html_attributes|text|render)[ \-\(])%
            )

          add_offense(node, message: MSG)
        end

        private

        def heredoc_body(node)
          node.loc.heredoc_body.source
        end
      end
    end
  end
end

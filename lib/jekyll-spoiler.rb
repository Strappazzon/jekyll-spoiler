require 'jekyll'
require 'kramdown'
require 'liquid'

module Jekyll
  module Spoiler
    class Block < Liquid::Block
      def initialize(tag_name, arguments, _tokens)
        super

        @args  = parse_args(arguments)
        @title = @args['title'].nil? || @args['title'].empty? ? 'Spoiler' : @args['title']
      end

      def render(context)
        content = Kramdown::Document.new(super).to_html

        # rubocop:disable Layout/ArrayAlignment
        return %W[
          <details class="spoiler">
            <summary class="spoiler-title">#{@title}</summary>
            #{content.strip}
          </details>
        ].join(' ')
        # rubocop:enable Layout/ArrayAlignment
      end

      private

      def parse_args(arguments)
        args = {}

        # key="value"
        arguments.scan(/(\w+)\s*=\s*"([^"]*)"/i) { |k, v| args[k] = v }

        raise ArgumentError, "Invalid number of arguments for {% spoiler %} block. Expected 0 or 1, got #{args.length}." unless [0, 1].include? args.length

        return args
      end
    end

    module Filter
      def spoiler(input)
        return if input.empty?

        return "<span class=\"spoiler-inline\">#{input}</span>"
      end
    end
  end
end

Liquid::Template.register_tag('spoiler', Jekyll::Spoiler::Block)
Liquid::Template.register_filter(Jekyll::Spoiler::Filter)

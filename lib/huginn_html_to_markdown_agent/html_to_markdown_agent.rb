require "reverse_markdown"
module Agents
  class HtmlToMarkdownAgent < Agent

    description <<-MD
      The html to markdown agent takes input in the form of an html string and converts it to markdown.

      Use the source option (with liquid formatting) to set the html string you want to convert.  
    MD

    def default_options
      {
        'source' => "<html><body>Code</body></html>"
      }
    end

    def working?
      true
    end

    def validate_options
      errors.add(:base, 'source_missing') unless options['source'].present?
    end

    def check
      html_input = interpolated("source")
      output = ReverseMarkdown.convert(html_input, unknown_tags: :bypass)
      create_event payload: {'markdown' => output}
    end

    def receive(incoming_events)
      interpolate_with_each(incoming_events) do |event|
        html_input = interpolated("source")
        output = ReverseMarkdown.convert(html_input, unknown_tags: :bypass)
        create_event payload: event.payload.merge({'markdown' => output})
      end
    end
  end
end

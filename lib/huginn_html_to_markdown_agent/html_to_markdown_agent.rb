module Agents
  class HtmlToMarkdownAgent < Agent
    default_schedule '12h'

    description <<-MD
      Add a Agent description here
    MD

    def default_options
      {
        source: "<html><body>Code</body></html>"
      }
    end

    def validate_options
    end

#    def check
#    end

#    def receive(incoming_events)
#    end
  end
end

require 'huginn_agent'

#HuginnAgent.load 'huginn_html_to_markdown_agent/concerns/my_agent_concern'
HuginnAgent.load 'reverse_markdown'
HuginnAgent.register 'huginn_html_to_markdown_agent/html_to_markdown_agent'

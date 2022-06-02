require 'rails_helper'
require 'huginn_agent/spec_helper'

describe Agents::HtmlToMarkdownAgent do
  before(:each) do
    @valid_options = Agents::HtmlToMarkdownAgent.new.default_options
    @checker = Agents::HtmlToMarkdownAgent.new(:name => "HtmlToMarkdownAgent", :options => @valid_options)
    @checker.user = users(:bob)
    @checker.save!
  end

  pending "add specs here"
end

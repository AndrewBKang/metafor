# frozen_string_literal: true

require_relative "metafor/version"
require_relative "sublayer/agents/generate_metafor_given_text_agent"
require "sublayer"

module Metafor
  def self.generate(text)
    ENV['OPENAI_API_KEY'] || raise(Error, "Please set OPENAI_API_KEY")

    Sublayer::Agents::GenerateMetaforGivenTextAgent.new(text: text).execute
  end

  class Error < StandardError; end
end

require "sublayer"

module Sublayer
  module Agents
    class GenerateMetaforGivenTextAgent
      include Sublayer::Capabilities::LLMAssistance
      include Sublayer::Capabilities::HumanAssistance

      attr_reader :text, :metaphors, :results

      llm_result_format type: :single_string,
        name: "metaphor",
        description: "a metaphor that explains the text"

      def initialize(text:)
        @text = text
      end

      def execute
        @metaphors = llm_generate
      end

      def prompt
        <<-PROMPT
        You are an expert in language, literature, communications, and storytelling.

        You are tasked with identifying metaphors that can explain text in a more relateable and digestible way.

        Here is the text snippet:

        ###TEXT###
        #{text}
        ###END TEXT###

        After reviewing the text, please suggest a metaphor to explain the text.
        Consider the meanings, and use commonly understood subjects to draw metaphors from.
        Metaphors should be relevant and enrich the comprehension of the text.
        Take a deep breath and let your creativity flow.
        Keep your response succinct and enjoyable to read even for a teenager.
        PROMPT
      end
    end
  end
end

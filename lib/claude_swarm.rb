# frozen_string_literal: true

# Standard library dependencies
require "digest"
require "English"
require "erb"
require "fileutils"
require "io/console"
require "json"
require "logger"
require "open3"
require "pathname"
require "pty"
require "securerandom"
require "set"
require "shellwords"
require "time"
require "timeout"
require "tmpdir"
require "yaml"

# External dependencies
require "fast_mcp_annotations"
require "mcp_client"
require "openai"
require "thor"

# Zeitwerk setup
require "zeitwerk"
loader = Zeitwerk::Loader.for_gem
loader.ignore("#{__dir__}/claude_swarm/templates")
loader.inflector.inflect(
  "cli" => "CLI",
  "openai" => "OpenAI",
)
loader.setup

module ClaudeSwarm
  class Error < StandardError; end
end

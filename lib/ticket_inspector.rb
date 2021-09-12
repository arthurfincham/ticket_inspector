# frozen_string_literal: true

require_relative "ticket_inspector/version"
require 'excon'
require 'json'

module TicketInspector
  class Error < StandardError; end

  def self.say_hello_gem
    "Hello, Gem!"
  end

  def self.call_api(url)
    response = Excon.get(url)
    return nil if response.status != 200
    JSON.parse(response.body)
  end

end

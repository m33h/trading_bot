require "tty-prompt"
require 'pry'

class EventsLoop
	@@event_loop = true

  def start
  	while @@event_loop do
	  	selected_option_event = prompt.select("Hello! Select option") do |menu|
				menu.choice name: 'Show account statement', value: 'show_account_statement'
				menu.choice name: 'Exit', value: 'exit_event_loop'
			end

			send(selected_option_event)  		
  	end
  end

  private

  def prompt
  	@_prompt ||= TTY::Prompt.new
  end

  def show_account_statement
  	puts rand
  end

  def exit_event_loop
  	@@event_loop = false
  end
end
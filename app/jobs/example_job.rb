class ExampleJob < ApplicationJob
  queue_as :default

  def perform(data:)
    puts data.inspect
  end
end

# Example consumer that prints messages payloads
class AnotherConsumer < ApplicationConsumer
  def consume
    messages.each do |message|
      puts YAML.dump message.payload
    end
  end

  # Run anything upon partition being revoked
  # def revoked
  # end

  # Define here any teardown things you want when Karafka server stops
  # def shutdown
  # end
end

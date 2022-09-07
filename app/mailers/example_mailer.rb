class ExampleMailer < ApplicationMailer
  def greetings(data)
    @data = data.with_indifferent_access
    @email = data[:email]
    mail(to: @email, subject: "Greetings!")
  end
end

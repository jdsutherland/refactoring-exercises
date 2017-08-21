class RecipientsFormatter
  WHITESPACE = /\s+/
  DELIMITERS = /[\n,;]+/

  def self.format(recipients)
    recipients.gsub(WHITESPACE, '').split(DELIMITERS)
  end
end

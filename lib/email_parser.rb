# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email_list

  @@all = []

  def initialize(emails)
    @emails = emails
  end

  def parse(emails)
    parsed_emails = emails.split(/\,||\' '/)
    parsed_emails.each do |email|
      @@all << email
    @all << parsed_emails
  end


end

# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email_list

  @@all = []

#  def initialize(emails)
  #  @email_list = emails
#  end

  def parse
    emails = @email_list.split(/[,\s]/)

    emails.each do |email|
      if email == ""
        emails.delete(email)
      end
    end
    emails.each do |email|
      if @@all.include?(email)
        emails.delete(email)
      end
    end
    emails.each do |email|
      @@all << email
    end
    @@all
  end


end

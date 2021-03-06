# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailParser
  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def parse
    emails = data.split(/[, ]/) #splits the csv string data to arrays
    no_empty_emails = emails.reject{|x| x.empty?} #removes blank ("") data in arrays
    no_empty_emails.uniq
    #binding.pry
  end

end

class Book
attr_reader :title,
            :author,
            :publication_date,
            :checked_out

  def initialize(book)
    @title = book[:title]
    @author = book[:author_first_name] + ' ' + book[:author_last_name]
    @publication_date = book[:publication_date]
    @checked_out = 0
  end

  def publication_year
    array_year = publication_date.split(' ')
    array_year.last
  end

  def checked_out
    @checked_out += 1
  end
end

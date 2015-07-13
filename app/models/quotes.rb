class Quotes < Rhino::Model::SQLite
  # attributes:
  # - submitter - string 100
  # - attribution - string 100
  # - quote       - string 10000

  def valid?
    !self['submitter'].empty? &&
    !self['attribution'].empty? &&
    !self['quote'].empty?
  end

end
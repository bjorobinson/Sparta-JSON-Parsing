require "json"

class MockarooParser
  attr_reader :json_person_file

  def initialize(json_person_file)
    @json_person_file = JSON.parse(File.read(json_person_file))
  end


end

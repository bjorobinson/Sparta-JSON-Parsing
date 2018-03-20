require "json"

class MockarooParser
  attr_reader :json_person_file

  def initialize(json_person_file)
    @json_person_file = JSON.parse(File.read(json_person_file))
  end

  def return
    @json_person_file
  end

  def return_hash index
    @json_person_file[index]
  end

end

# test = MockarooParser.new('json_mockaroo_data.json')
# puts test.return

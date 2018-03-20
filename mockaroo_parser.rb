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

  def get_first_name index
    @json_person_file[index]['first_name']
  end

  def get_last_name index
    @json_person_file[index]['last_name']
  end

end

# test = MockarooParser.new('json_mockaroo_data.json')
# puts test.return

require 'spec_helper'

describe MockarooParser do

  before(:each) do
    @file = MockarooParser.new('json_mockaroo_data.json')
  end

  it "must contain 50 rows of data" do
    expect(@file.return().length).to eq 50
  end

  it "must, in each of these rows, contain a Hash of 4 items" do
    for index in 0...@file.return().length
      expect(@file.return_hash(index).length).to eq 4
    end
  end

  it "must, in each of these rows, contain a first and second name, both of which are strings" do
    for index in 0...@file.return().length
      expect(@file.get_first_name(index)).to be_instance_of(String)
      expect(@file.get_last_name(index)).to be_instance_of(String)
    end
  end

  it "must, in each of these rows, contain an array of 3 emails, all of which are valid emails" do
    for index in 0...@file.return().length
      for index_email in 0..2
        expect(@file.get_emails(index)[index_email]).to be_instance_of(String)
        expect(@file.get_emails(index)[index_email]).to include('@')
      end
    end
  end

end

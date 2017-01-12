require 'spec_helper'

describe Net::HTTP::Report do
  it "has a version number" do
    expect(Net::HTTP::Report::VERSION).not_to be nil
  end
end

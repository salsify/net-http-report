require 'spec_helper'

describe Net::HTTP::Report do
  let(:uri) { URI('https://www.example.com') }
  let(:request) { Net::HTTP::Report.new(uri) }

  it "uses the REPORT method" do
    expect(request.method).to eq('REPORT')
  end

  it "allows request bodies" do
    expect(request.request_body_permitted?).to be true
  end

  it "allows response bodies" do
    expect(request.response_body_permitted?).to be true
  end
end

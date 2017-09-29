require 'van'

describe Van do
  it 'needs to know if the bike is working' do
    expect(subject.bike_working?).to eq(false)
  end
end

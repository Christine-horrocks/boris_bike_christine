require 'Bike'

describe Bike do

  it 'a newly created bike will be working' do
    expect(Bike.new.working).to be true
  end

  it 'is possible for a user to report a faulty bike' do
    subject.working = false
    expect(subject.working).to eq false
  end

end

require 'Bike'

describe Bike do
  it "Responds to working? method" do
    expect(subject).to respond_to :working?
  end
  it 'when we call method working? on an instance of bike it answers true' do
    expect(Bike.new.working?).to be true
  end
end

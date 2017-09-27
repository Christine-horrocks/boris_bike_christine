require 'Bike'

describe Bike do
  it "Responds to working? method" do
    expect(subject).to respond_to :working?
  end
end

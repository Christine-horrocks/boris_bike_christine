require "DockingStation"

describe DockingStation do

  describe ".release_bike" do
    context "given method release_bike" do
      it 'responds' do
        expect(subject).to respond_to :release_bike
      end
    end
  end
end

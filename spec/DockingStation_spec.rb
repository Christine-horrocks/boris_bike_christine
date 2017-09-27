require "DockingStation"

describe DockingStation do

      it 'responds to release bike' do
        expect(subject).to respond_to :release_bike
      end
      it 'when release_bike method is called, it creates an instance of Bike class' do
        expect(subject.release_bike).to be_an_instance_of(Bike)
      end
end

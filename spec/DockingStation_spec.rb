require "DockingStation"

describe DockingStation do

      it 'responds to release bike' do
        expect(subject).to respond_to :release_bike
      end
      it 'when release_bike method is called, it creates an instance of Bike class' do
        expect(subject.release_bike).to be_an_instance_of(Bike)
      end
        it 'when we call method working? on an instance of bike it answers true' do
        bike = subject.release_bike
        expect(bike.working?).to be true
      end

end

#describe Bike do
#    it 'when we call method working? on an instance of bike it answers true' do
#      expect(subject.working?).to be true
#    end
#  end

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

      it 'is possible to dock a bike to the DockingStation' do
        bike = Bike.new
        subject.dock bike
        expect(subject.bike).to eq(bike)
      end


    #  it 'is possibel to see if there is a bike in the DockingStation' do
      #  expect(subject).to respond_to(:bike)
    #  end
end

#describe Bike do
#    it 'when we call method working? on an instance of bike it answers true' do
#      expect(subject.working?).to be true
#    end
#  end

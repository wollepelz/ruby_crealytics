require 'spec_helper'
describe HeatingControl do
  let(:radiator_heating) do
    Heating.new('bathroom', 20, 35.4)
  end

  let(:ground_heating) do
    Heating.new('swimming pool', 180, 25.0)
  end

  subject do
    HeatingControl.new
  end

  context 'all heatings' do
    before do
      @num_radiator = rand(1..9)
      @num_ground = rand(1..9)
      @num = @num_radiator + @num_ground
      @num_radiator.times do
        subject.add_heating(radiator_heating)
      end
      @num_ground.times do
        subject.add_heating(ground_heating)
      end
    end
    
    it 'displays the number of controlled heatings' do
      subject.num_of_heatings.should == @num
    end
    it 'can calculate the global efficiency' do
      subject.global_area.should == @num_radiator * 20.0 + @num_ground * 180.0
    end
    it 'can calculate the average temperature' do
      subject.average_temperature.should == ((@num_radiator * 35.4 + @num_ground * 25.0)/@num).round(2)
    end
  end
end

require 'spec_helper'
describe Heating do
  subject { Heating.new('wooden', 150, 30.0) }
  it 'can display its temperature' do
    subject.temperature.should == 30.0    
  end
  it 'can display its name' do
    subject.name.should == 'wooden'
  end
  it 'can display its area' do
    subject.area.should == 150
  end
  it 'can calculate the efficiency per degree' do
    subject.efficiency.should == 5.0
  end
end

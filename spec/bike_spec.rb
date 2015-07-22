require 'bike'

describe Bike do

  it "should respond to working?" do
    expect(subject).to respond_to(:working?)
  end

  it "can be reported as broken?" do
    subject.report_broken
    expect(subject).to be_broken
  end

  it "should be not working if broken" do
    subject.report_broken
    expect(subject).not_to be_working
  end


end
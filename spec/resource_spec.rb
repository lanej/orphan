require 'spec_helper'

module OrphanSpec
  class Model
    include Orphan::Resource

    property :id,     Serial
    property :name,   String
    property :amount, Integer
  end
end

[true, false].each do |mock|
describe Orphan::Resource do
  before(:all) do
    Orphan.mock= mock
  end
  describe "#create" do
    it "should create a model" do
      OrphanSpec::Model.create(name: 'name', amount: 1).should be_a OrphanSpec::Model
    end
  end
  describe "#get" do
    it "should return a model" do
      model = OrphanSpec::Model.create(name: 'name', amount: 1)
      OrphanSpec::Model.get(model.id).should be_a OrphanSpec::Model
    end
    it "should return nil when not found" do
      OrphanSpec::Model.auto_migrate!
      OrphanSpec::Model.get(1).should be_nil
    end
  end
  describe "#attributes" do
    it "should respond to attributes" do
      model = OrphanSpec::Model.create(name: 'name', amount: 1).should be_a OrphanSpec::Model

    end
    it "should respond to property methods" do
      model = OrphanSpec::Model.create(name: 'name', amount: 1).should be_a OrphanSpec::Model
      model.id.should be_a Integer
      model.name.should eq 'name'
      model.amount.should eq amount
    end
  end
end
end

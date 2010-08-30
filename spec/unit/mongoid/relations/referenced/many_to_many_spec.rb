require "spec_helper"

describe Mongoid::Relations::Referenced::ManyToMany do

  let(:klass) do
    Mongoid::Relations::Referenced::ManyToMany
  end

  describe ".builder" do

    let(:builder_klass) do
      Mongoid::Relations::Builders::Referenced::ManyToMany
    end

    let(:document) do
      stub
    end

    let(:metadata) do
      stub(:extension? => false)
    end

    it "returns the embedded in builder" do
      klass.builder(metadata, document).should
        be_a_kind_of(builder_klass)
    end
  end

  describe ".macro" do

    it "returns references_and_referenced_in_many" do
      klass.macro.should == :references_and_referenced_in_many
    end
  end
end

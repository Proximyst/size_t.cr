require "./spec_helper"

describe Sizes do
  it "size check" do
    {% if flag?(:x86_64) || flag?(:aarch64) %}
      Sizes::USize.should eq UInt64
      Sizes::ISize.should eq Int64
    {% else %}
      Sizes::USize.should eq UInt32
      Sizes::ISize.should eq Int32
    {% end %}
  end
end

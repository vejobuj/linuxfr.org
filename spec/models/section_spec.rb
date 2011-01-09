# == Schema Information
#
# Table name: sections
#
#  id          :integer(4)      not null, primary key
#  state       :string(10)      default("published"), not null
#  title       :string(32)      not null
#  cached_slug :string(32)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Section do
  subject { Factory.new(:section) }

  it { should be_valid }

  it "has an image method" do
    expect { subject.image }.to_not raise_error
  end

  it "has a published scope" do
    expect { Section.published.all }.to_not raise_error
  end
end

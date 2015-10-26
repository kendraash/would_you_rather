require 'rails_helper'

describe Choice do
  it { should have_many :comments }
  it { should validate_presence_of :option_a }
  it { should validate_presence_of :option_b }
end

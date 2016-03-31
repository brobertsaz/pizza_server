require "rails_helper"

RSpec.describe Validators::CreatePizza do
  it do
    expect(described_class.new.call({ 'name' => 'Deep Dish' })).to be_empty
    expect(described_class.new.call({})).to be == { name: ["can't be blank"]}
  end
end
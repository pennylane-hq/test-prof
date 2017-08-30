# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../../../../../lib", __FILE__)
require "active_support/testing/time_helpers"
require "test-prof"

$_now = Time.now
Time.define_singleton_method(:now) { $_now }

describe "Something" do
  it "sleeps a little", a: :x do
    sleep 0.1
    expect(true).to eq true
  end
end
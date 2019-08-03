require_relative './spec_helper'
require_relative '../say_hello'

describe "say_hello" do

  it 'accepts an argument of a name and prints out Hello with that Name' do
    expect($stdout).to receive(:puts).with("Hello Ruby Programmer!")
    say_hello("Ruby Programmer")
  end

  it 'defaults to Kent Beck when no name is passed in' do
    expect($stdout).to receive(:puts).with("Hello Kent Beck!")
    say_hello()
  end
end

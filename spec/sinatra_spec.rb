require_relative '../src/basics'

require "test/unit"
require 'rspec'
require 'rack/test'

describe 'The HelloWorld App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "says hello" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello, World')
  end

  it "says a little about me" do
    get '/about'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('A little about me.')
  end
end

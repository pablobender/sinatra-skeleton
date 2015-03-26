# encoding utf-8

require_relative '../spec_helper'

describe Raffinato::Api do
  it 'should be active' do
    get '/status'
    expect(last_response.ok?).to eq(true)
    expect(last_response.header['Content-Type']).to include('application/json')
    expect(last_response.body).to eq({status: 'active'}.to_json)
  end
end

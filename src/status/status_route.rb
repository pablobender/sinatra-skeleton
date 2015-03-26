# encoding utf-8

module Status
  def self.registered(app)
    app.get '/status' do
      content_type :json
      { status: 'active' }.to_json
    end
  end
end

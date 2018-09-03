def login
  post user_session_path, params: { email: 'testing@testing.com', password: 'password' }.to_json, headers: { 'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json' }
end

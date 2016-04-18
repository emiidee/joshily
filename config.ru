use Rack::Static,
  :urls => Dir.glob("public/*").map { |fn| fn.gsub(/public/, '')},
  :root => "public",
  :index => "index.html",
  :header_rules => [
    [:all, {'Cache-Control' => 'public, max-age=86400'}]
  ]

run lambda{ |env| [ 404, { 'Content-Type'  => 'text/html' }, ['404 - page not found'] ] }
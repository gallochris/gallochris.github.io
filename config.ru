# This serves static files from the ./build directory.
# Jekyll needs to be running to watch and build the ./source directory.
# Run Jekyll with `rake`

require 'pathname'
root = Pathname.new("./build").expand_path

run Proc.new { |env|
  source = root
  locale = env["HTTP_HOST"].split('.').first
  if source.join(locale).exist?
    source = source.join(locale).expand_path
  end
  path = Rack::Utils.unescape(env['PATH_INFO'])
  path = ".#{path}" if path[0] == "/"
  index_file = source.join(path, 'index.html')

  if index_file.exist?
    [200, {'Content-Type' => 'text/html'}, [index_file.read]]
  else
    Rack::Directory.new(source.to_s).call(env)
  end
}

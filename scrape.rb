require 'net/http'

def get_from(url)
  Net::HTTP.get(URI(url))
end

def write_file(path, text)
  File.open(path, 'w') { |file| file.write(text) }
end

html = get_from('https://masayuki14.github.io/pit-news/')

write_file('pitnews.html', html)
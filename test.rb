require 'uri'
require 'net/http'

url = URI("https://coinranking1.p.rapidapi.com/coin/Qwsogvtv82FCd/price?referenceCurrencyUuid=yhjMzLPhuIDl&timestamp=1691787178")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = '80b5bcf903msh2df706c5118535dp1c8950jsn004aa918f978'
request["X-RapidAPI-Host"] = 'coinranking1.p.rapidapi.com'

response = http.request(request)
puts response.read_body


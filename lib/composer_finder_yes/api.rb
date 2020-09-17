require 'open-uri'
require 'net/http'
require 'json'
require 'pry'
require 'awesome_print'

class Api
  
url = "https://api.openopus.org/composer/list/epoch/all.json"
uri = URI.parse(url)
response = Net::HTTP.get_response(uri)
hash = JSON.parse(response.body)

    #random first 10 (can use #sample ) "[1, 2, 3, 4].sample(3)"
#instatniate composers
class Composer
    
    random_composers = [hash].sample(10)

end 


end

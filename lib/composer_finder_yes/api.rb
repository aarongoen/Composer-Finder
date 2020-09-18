require 'open-uri'
require 'net/http'
require 'json'
require 'pry'
require 'awesome_print'
require 'date'

class ComposerFinderYes::Api

    def gets_composer_hash

        url = "https://api.openopus.org/composer/list/epoch/all.json"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        hash = JSON.parse(response.body)

        random_composers = hash["composers"].sample(5)

        random_composers.each do |composer|
            complete_name = composer["complete_name"]
            birth = composer["birth"]
            death = composer["death"]
            epoch = composer["epoch"]
            ComposerFinderYes::Composer.new(complete_name, birth, death, epoch)
            # binding.pry
        end
    end
end 


require 'open-uri'
require 'net/http'
require 'json'
require 'pry'
require 'awesome_print'
require 'date'
require 'colorize'


class ComposerFinderYes::Api # Uses the name-space to differentiate this Api from any other Apis.

    def gets_composer_hash
        
        url = "https://api.openopus.org/composer/list/epoch/all.json" #
        uri = URI.parse(url) # URI stands for "Uniform Resource Identifier. A URL is a type of URI."
        response = Net::HTTP.get_response(uri) # Requests info from the URI in a format close to the HTTP response being sent.
        hash = JSON.parse(response.body) # Translates the response into a JS hash.

        random_composers = hash["composers"].sample(5) # Picks 5 random hashes.  

        random_composers.each do |composer| # Iterates through each hash of composers. Sets each to a variable.
            complete_name = composer["complete_name"]
            birth = composer["birth"]
            death = composer["death"]
            epoch = composer["epoch"]
            ComposerFinderYes::Composer.new(complete_name, birth, death, epoch) # Instantiates new composer with arguments created.
        end
    end
end 


require 'open-uri'
require 'net/http'
require 'json'
require 'pry'
require 'awesome_print'

class ComposerFinderYes::Api

    # attr_accessor :name, :birth, :death, :epoch

    # def initialize(name, birth = nil, death = nil, epoch)
    #     @name = name
    #     @birth = birth 
    #     @death = death 
    #     @epoch = epoch
    # end 

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
            Composer.new(complete_name, birth, death, epoch)
        end
        

        Composer.new(composer)
        #make sure they have a each have a hash with:
            # complete_name
            # birth
            # death
            # epoch
        end 

        #bach needs to inherit attributes: complete_name, birth, death, & epoch

end 


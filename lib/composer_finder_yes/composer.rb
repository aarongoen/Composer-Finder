class ComposerFinderYes::Composer

def self.short_list
    #get a #handful# of instances of composers
    #Go through API hash to find random composers.
    #List 5 of them here.

    attr_accessor :name, :dates, :epoch, :link

    composer_1 = self.new
    composer_1.name = "Giovanni Gabrieli"
    composer_1.dates = "1635-1680"
    composer_1.epoch = "Renaissance"
    composer_1.link = "http://..."

    [composer_1, composer_2, composer_3, composer_4, composer_5]
end 

#     def initialize
#         @composer = composer 
#     end

#     def find_keyboard_composers(hash)

#     hash.each do |
#     end

#     end

#     #write code to make \({composers} key available.
# # composers = hash["composers"]

#     #get this info from the scraper class
#     composer = composers["complete_name"]
#     composer_dates = composers["birth"] - composers["death"]

end
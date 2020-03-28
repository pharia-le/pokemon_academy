class PokemonAcademy::CLI

    def call
        puts "Greeting, Trainer. ϞϞ(o^-^o)∩" unless PokemonAcademy::Pokemon.all.size > 0
        puts "Please standby while we gather the Pokemon..." unless PokemonAcademy::Pokemon.all.size > 0
        PokemonAcademy::API.new.call_api unless PokemonAcademy::Pokemon.all.size > 0
        puts(<<~TYPE)
        
        "What Pokemon type would you like to explore?"

        - Normal
        - Fire
        - Electric
        - Grass
        - Ice
        - Fighting
        - Poison
        - Ground
        - Flying
        - Psychic
        - Bug
        - Rock
        - Ghost
        - Dragon
        - Dark
        - Steel
        - Fairy

        TYPE
        input = gets.strip.downcase
        list(PokemonAcademy::Pokemon.pokemon_names(input))
    end
    
    def list(names)
        puts ""
        puts "Please choose a Pokemon by number."
        names.each.with_index(1) {|name, i| puts "#{i}. #{name}"}
        pokemon_chosen =  names[gets.to_i - 1]
        PokemonAcademy::SCRAPER.new.scrape(pokemon_chosen)
    end

    def self.details(info)
        puts(<<~DETAILS)
            "------------------------------------------------------------------ #{info[:name]} ------------------------------------------------------------------"
            #{info[:summary]}
            
            Height: #{info[:height]}     Category: #{info[:category]}
            Weight: #{info[:weight]}    Abilities: #{info[:abilities]}

            Type: #{info[:types]}
            Weaknesses: #{info[:weaknesses]}

        DETAILS
    end

end
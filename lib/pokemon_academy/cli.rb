class PokemonAcademy::CLI

    def call
        puts "Greeting, Trainer. ϞϞ(o^-^o)∩"
        puts "Please standby while we gather the Pokemon..."
        PokemonAcademy::API.new.call_api
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
        list_of_pokemon_by_input_type(PokemonAcademy::Pokemon.pokemon_names(input))
    end
    
    def list_of_pokemon_by_input_type(list)
        puts ""
        puts "Please choose a Pokemon by number."
        list.each.with_index(1) {|name, i| puts "#{i}. #{name}"}    
    end
end
class PokemonAcademy::API

    def call_api
        resp = RestClient.get("https://pokeapi.co/api/v1/pokemon?limit=151")
        api_hash = JSON.parse(resp.body, symbolize_names:true)
        api_array = api_hash[:results]
        api_array.each do |pokemon|
            PokemonAcademy::Pokemon.new(pokemon[:name],pokemon[:url])
        end
    end

end
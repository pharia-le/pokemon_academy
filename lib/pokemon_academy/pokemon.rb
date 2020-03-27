class PokemonAcademy::Pokemon

    attr_accessor :name, :url
    attr_reader :types

    @@all = []

    def initialize(name,url)
        @name = name
        @url = url
        @types = types
        self.save
    end

    def types
        resp = RestClient.get(@url)
        pokemon_hash = JSON.parse(resp.body, symbolize_names:true)
        pokemon_hash[:types].collect {|type| type[:type][:name]}
    end
    
    def self.pokemon_names(input)
        filter = @@all.select {|pokemon| pokemon.types.include?(input)}
        names = filter.map {|pokemon| pokemon.name}
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

end

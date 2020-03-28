class PokemonAcademy::SCRAPER

    URL = "https://www.pokemon.com/us/pokedex/"

    def scrape(input)
      pokemon_info = []
      html = Nokogiri::HTML(open("#{URL}#{input}"))
      info = {}
      info[:name] = input.upcase
      info[:summary] = html.css(".version-x").text.gsub("\n", ' ').squeeze(' ')
      info[:weaknesses] = html.css(".dtm-weaknesses> ul > li").text.split.uniq.join(", ")
      info[:types] = html.css(".dtm-type > ul > li").text.split.uniq.join(", ")

      attributes = html.css(".column-7 > ul > li").text.split()
      info[:height] = attributes[1..2].join(" ")
      info[:weight] = attributes[4..5].join(" ")
      info[:category] = attributes[8]
      info[:abilities] = attributes[10]
      PokemonAcademy::CLI.details(info)
      puts ""
      puts "Would you like to explore more Pokemon? yes / no"
      answer = gets.strip.downcase
      puts ""
      if answer == "yes"
        PokemonAcademy::CLI.new.call
      end
    end
end


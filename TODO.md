How to Build a CLI Gem

1. Plan your gem, imagine your interface
2. Start with the project structure - google
3. Start with the entry point - the file run
4. Force that to build the CLI interface
5. Stub out the interface
6. Start making things real
7. Discover objects
8. program

- A command line interface for pokemon enthusiasts, starting with 3 options: Learn, Play, Inspire

user types pokemon_academy

Shows a list of options

Greeting, Trainers! ϞϞ(๑⚈ ․̫ ⚈๑)∩
Please select an option below.

1. Explore
2. Play
3. Inspire

> 1
> What type are you interested in?
>1. Normal
>2. Fire
>3. Electric
>4. Grass
>5. Ice
>6. Fighting
>7. Poison
>8. Ground
>9. Flying
>10. Psychic
>11. Bug
>12. Rock
>13. Ghost
>14. Dragon
>15. Dark
>16. Steel
>17. Fairy

> 3

Which Pokemon would you like to learn about?

>1. Pikachu
>2. Raichu
...
...
..

> Pikachu

>----------------------------------  Pikachu ----------------------------------------------------
> Whenever Pikachu comes across something new, it blasts it with a jolt of electricity. If you come across a blackened berry, it's evidence that this Pokémon mistook the intensity of its charge.
>
>Height: 1' 04''    Category: Mouse
>Weight: 13.2 lbs   Abilities: Static
>
>Type: Electric
>
>Weaknesses: Ground
>
>Evolutions: Pichu, Pikachu, Raichu
>---------------------------------------------------------------------------------------------
>
> Would you like to explore more Pokemon? yes / no
> yes

> What type are you interested in?
>1. Normal
>2. Fire
>3. Electric
....

> Normal

>----------------------------------  Ditto ----------------------------------------------------
> Ditto rearranges its cell structure to transform itself into other shapes. However, if it tries to transform itself into something by relying on its memory, this Pokémon manages to get details wrong.
>
>Height: 1' 00"'    Category: Transform
>Weight: 8.8 lbs   Abilities: Limber
>
>Type: Normal
>
>Weaknesses: Fighting
>
>Evolutions: This Pokémon does not evolve.
>---------------------------------------------------------------------------------------------
> Would you like to explore more Pokemon? yes / no
> no
>
>Please select an option below.
>
>1. Learn
>2. Play
>3. Inspire

>4. Exit

Pokemon # = > Model
 - pulling data from API
 - parsing it
 - matching person's query
 - displaying specific data

Pokedex
 - pulling data matching person's query
 - parsing it 
 - displaying specific data

 Menu # == > Controller
 - #start
    main
        -initial options
        -gets input
        -delegates to menu choice

Requirements:

A data Source. Where am I getting this information?
Pokemon.find_by_type(type)
A Menu...
    communicates with the data source for information

Pokemon.find(pokemon)


What is a Pokemon?

Name
Type
Height
Weight
Weakness
Summary
Evolution
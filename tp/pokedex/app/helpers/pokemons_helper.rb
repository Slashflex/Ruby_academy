module PokemonsHelper

    def list_pokemons p
        html = "<li><a href='/pokemons/#{p.id}'>".html_safe
        html += "#{p.name}( #{p.type.name})"
        html += "</a></li>".html_safe
        html
    end

end

//
//  PokemonCell.swift
//  PokeGodar
//
//  Created by Mark Hamilton on 3/12/16.
//  Copyright © 2016 dryverless. All rights reserved.
//

import UIKit

final class PokemonCell: UICollectionViewCell {
    
    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var pokemonNameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 15.0
        
    }
    
    func configureCell(_ pokemon: Pokemon) {
        
        self.pokemon = pokemon
        
        pokemonNameLabel.text = self.pokemon.name.capitalized
        pokemonImage.image = UIImage(named: "\(self.pokemon.id)")
        
    }
    
    
}

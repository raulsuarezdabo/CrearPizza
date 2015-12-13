//
//  ResumePizzaViewController.swift
//  CreaPizza
//
//  Created by Raul Suarez Dabo on 13/12/15.
//  Copyright © 2015 Raul Suarez Dabo. All rights reserved.
//

import UIKit

class ResumePizzaViewController: UIViewController {
    
    var miPizza: Pizza?

    @IBOutlet weak var pizzaSize: UILabel!
    @IBOutlet weak var pizzaType: UILabel!
    @IBOutlet weak var pizzaCheese: UILabel!
    @IBOutlet weak var pizzaIngredients: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pizzaSize.text = "Masa: " + (self.miPizza?.getSizeToString())!
        pizzaType.text = "Tipo: " + (self.miPizza?.getTypeToString())!
        pizzaCheese.text = "Queso: " + (self.miPizza?.getCheeseToString())!
        pizzaIngredients.text = "Ingrediente/s: " + (self.miPizza?.getIngredientsToString())!
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

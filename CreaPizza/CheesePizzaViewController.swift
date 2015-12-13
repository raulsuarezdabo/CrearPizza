//
//  CheesePizzaViewController.swift
//  CreaPizza
//
//  Created by Raul Suarez Dabo on 13/12/15.
//  Copyright © 2015 Raul Suarez Dabo. All rights reserved.
//

import UIKit

class CheesePizzaViewController: UIViewController {
    
    var miPizza: Pizza?

    @IBAction func setCheeseButtonMozarela() {
        setCheese(PizzaCheese.mozarela)
    }
    
    @IBAction func setCheeseButtonCheddar() {
        setCheese(PizzaCheese.cheddar)
    }
    
    @IBAction func setCheeseButtonParmesano() {
        setCheese(PizzaCheese.parmesano)
    }
    
    @IBAction func setCheeseButtonNone() {
        setCheese(PizzaCheese.none)
    }
    
    func setCheese(cheese: PizzaCheese) {
        self.miPizza?.setCheese(cheese)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! IngredientsPizzaViewController
        nextView.miPizza = self.miPizza
    }

}

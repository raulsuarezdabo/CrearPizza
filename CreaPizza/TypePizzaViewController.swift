//
//  TypePizzaViewController.swift
//  CreaPizza
//
//  Created by Raul Suarez Dabo on 13/12/15.
//  Copyright © 2015 Raul Suarez Dabo. All rights reserved.
//

import UIKit

class TypePizzaViewController: UIViewController {
    
    var miPizza: Pizza?

    @IBAction func setTypeButtonSlim() {
        setType(PizzaType.delgada)
    }
    
    @IBAction func setTypeButtonCrusty() {
        setType(PizzaType.crujiente)
    }
    
    @IBAction func setTypeButtonGros() {
        setType(PizzaType.gruesa)
    }
    
    func setType(type: PizzaType) {
        self.miPizza?.setType(type)
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
        let nextView = segue.destinationViewController as! CheesePizzaViewController
        nextView.miPizza = self.miPizza
    }

}

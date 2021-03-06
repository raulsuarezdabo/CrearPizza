//
//  TypePizzaViewController.swift
//  CreaPizza
//
//  Created by Raul Suarez Dabo on 13/12/15.
//  Copyright © 2015 Raul Suarez Dabo. All rights reserved.
//

import UIKit

class SizePizzaViewController: UIViewController {
    
    var miPizza: Pizza?
    
    @IBAction func setSizeButtonSmall() {
        setSize(PizzaSize.chica)
    }
    
    @IBAction func setSizeButtonMedium() {
        setSize(PizzaSize.mediana)
    }
    
    @IBAction func setSizeButtonBig() {
        setSize(PizzaSize.grande)
    }
    
    
    func setSize(size: PizzaSize) {
        self.miPizza?.setSize(size)
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
        let nextView = segue.destinationViewController as! TypePizzaViewController
        nextView.miPizza = self.miPizza
    }

}

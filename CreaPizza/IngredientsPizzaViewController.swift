//
//  IngredientsPizzaViewController.swift
//  CreaPizza
//
//  Created by Raul Suarez Dabo on 13/12/15.
//  Copyright © 2015 Raul Suarez Dabo. All rights reserved.
//

import UIKit

class IngredientsPizzaViewController: UIViewController {
    
    var miPizza: Pizza?
    //Switch collection
    @IBOutlet weak var ingredientSwitchJamon: UISwitch!
    @IBOutlet weak var ingredientSwitchPeperoni: UISwitch!
    @IBOutlet weak var ingredientSwitchPavo: UISwitch!
    @IBOutlet weak var ingredientSwitchSalchicha: UISwitch!
    @IBOutlet weak var ingredientSwitchAceituna: UISwitch!
    @IBOutlet weak var ingredientSwitchCebolla: UISwitch!
    @IBOutlet weak var ingredientSwitchPimiento: UISwitch!
    @IBOutlet weak var ingredientSwitchAnchoa: UISwitch!
    
    @IBOutlet weak var submitButton: UIButton!
    

    @IBAction func switchJamon() {
        if(self.ingredientSwitchJamon.on) {
            self.miPizza?.addIngredient(PizzaIngredients.jamon)
        }
        else {
            self.miPizza?.removeIngredient(PizzaIngredients.jamon)
        }
        checkIfIsValid()
    }
    
    @IBAction func switchPeperoni() {
        if(self.ingredientSwitchPeperoni.on) {
            self.miPizza?.addIngredient(PizzaIngredients.pepperoni)
        }
        else {
            self.miPizza?.removeIngredient(PizzaIngredients.pepperoni)
        }
        checkIfIsValid()
    }
    
    @IBAction func switchPavo() {
        if(self.ingredientSwitchPavo.on) {
            self.miPizza?.addIngredient(PizzaIngredients.pavo)
        }
        else {
            self.miPizza?.removeIngredient(PizzaIngredients.pavo)
        }
        checkIfIsValid()
    }
    
    @IBAction func switchSalchicha() {
        if(self.ingredientSwitchSalchicha.on) {
            self.miPizza?.addIngredient(PizzaIngredients.salchicha)
        }
        else {
            self.miPizza?.removeIngredient(PizzaIngredients.salchicha)
        }
        checkIfIsValid()
    }
    
    @IBAction func switchAceituna() {
        if(self.ingredientSwitchAceituna.on) {
            self.miPizza?.addIngredient(PizzaIngredients.aceituna)
        }
        else {
            self.miPizza?.removeIngredient(PizzaIngredients.aceituna)
        }
        checkIfIsValid()
    }
    
    @IBAction func switchCebolla() {
        if(self.ingredientSwitchCebolla.on) {
            self.miPizza?.addIngredient(PizzaIngredients.cebolla)
        }
        else {
            self.miPizza?.removeIngredient(PizzaIngredients.cebolla)
        }
        checkIfIsValid()
    }
    
    @IBAction func switchPimineto() {
        if(self.ingredientSwitchPimiento.on) {
            self.miPizza?.addIngredient(PizzaIngredients.pimiento)
        }
        else {
            self.miPizza?.removeIngredient(PizzaIngredients.pimiento)
        }
        checkIfIsValid()
    }
    
    @IBAction func switchAnchoa() {
        if(self.ingredientSwitchAnchoa.on) {
            self.miPizza?.addIngredient(PizzaIngredients.anchoa)
        }
        else {
            self.miPizza?.removeIngredient(PizzaIngredients.anchoa)
        }
        checkIfIsValid()
    }
    
    func checkIfIsValid() {
        if (self.miPizza?.checkIngredientsIsValid() == false) {
            showAlert()
            self.submitButton.enabled = false
        }
        else {
            self.submitButton.enabled = true
        }
    }
    
    @IBAction func showAlert() {
        let alertController = UIAlertController(title: "¡Error en los ingredientes!", message: "Solo puedes escoger entre 1 y 5 ingredientes", preferredStyle: .Alert)
        let defaultAction = UIAlertAction(title: "Entendido", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.miPizza?.clearIngredients()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! ResumePizzaViewController
        nextView.miPizza = self.miPizza
    }

}

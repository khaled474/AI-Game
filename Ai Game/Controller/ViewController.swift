//
//  ViewController.swift
//  Ai Game
//
//  Created by Khaled abdelmohsen on 06/05/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var statGame: UILabel!
    
    
    @IBOutlet weak var wolf: UIButton!
    @IBOutlet weak var carrot: UIButton!
    @IBOutlet weak var goat: UIButton!
    @IBOutlet weak var boat: UIButton!
    var unformedSearch:UnformedSearch!
    override func viewDidLoad() {
        super.viewDidLoad()
        unformedSearch = UnformedSearch()
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        
        
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    
    @IBAction func goatBtn(_ sender: UIButton) {
        
        //check carrot right
        if (carrot.center.x == 525.0 && carrot.center.y == 255.0) && boat.center.x == 525.5 && boat.center.y == 342.0 {
            carrot.center.x = 770.5
            carrot.center.y = 242.0
            
        }
        //check wolf right
        if (wolf.center.x == 525.0 && wolf.center.y == 255.0) && boat.center.x == 525.5 && boat.center.y == 342.0 {
            wolf.center.x = 677.5
            wolf.center.y = 255.0
            
        }
        //check carrot left
        if (carrot.center.x == 365.5 && carrot.center.y == 264.0) && boat.center.x == 365.5 && boat.center.y == 342.0 {
            carrot.center.x = 145.5
            carrot.center.y = 255.0
            
        }
        //check wolf left
        if (wolf.center.x == 365.5 && wolf.center.y == 264.0) && boat.center.x == 365.5 && boat.center.y == 342.0 {
            wolf.center.x = 67.5
            wolf.center.y = 255.0
            
        }
        //send to boat right
        if (sender.center.x == 862.5 && sender.center.y ==  255.0 && boat.center.x == 525.5 && boat.center.y == 342.0){
            
            sender.center.x = 525.0
            sender.center.y =  255.0
            //send from boat right
        }else if (sender.center.x == 525.0 && sender.center.y ==  255.0 && boat.center.x == 525.5 && boat.center.y == 342.0){
            
            sender.center.x = 862.5
            sender.center.y =  255.0
            //send from boat right
        }else if (sender.center.x == 365.5 && sender.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
            sender.center.x = 233.5
            sender.center.y = 255.0
            StatGame()
            //send to boat left
        }else if (sender.center.x == 233.5 && sender.center.y == 255.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
            sender.center.x = 365.5
            sender.center.y = 264.0
        }
    }
    
    @IBAction func carrotBtn(_ sender: UIButton) {
        //check wolf right
        if (wolf.center.x == 525.0 && wolf.center.y == 255.0) && boat.center.x == 525.5 && boat.center.y == 342.0 {
            wolf.center.x = 677.5
            wolf.center.y = 255.0
            
        }
        //check goat right
        if (goat.center.x == 525.0 && goat.center.y ==  255.0 && boat.center.x == 525.5 && boat.center.y == 342.0){
            
            goat.center.x = 862.5
            goat.center.y =  255.0
        }
        //check wolf left
        if (wolf.center.x == 365.5 && wolf.center.y == 264.0) && boat.center.x == 365.5 && boat.center.y == 342.0 {
            wolf.center.x = 67.5
            wolf.center.y = 255.0
        }
        //check goat left
        if (goat.center.x == 365.5 && goat.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
            goat.center.x = 233.5
            goat.center.y = 255.0
        }
        //send to boat right
        if ( sender.center.x == 770.5 &&
             sender.center.y == 242.0 && boat.center.x == 525.5 && boat.center.y == 342.0 ){
            sender.center.x = 525.0
            sender.center.y =  255.0
            //send from boat right
        }else if ( sender.center.x == 525.0 &&
                   sender.center.y == 255.0 && boat.center.x == 525.5 && boat.center.y == 342.0 ){
            sender.center.x = 770.5
            sender.center.y =  242.0
            //send from boat left
        }else if( sender.center.x == 365.5 &&
                  sender.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ){
            
            sender.center.x = 145.5
            sender.center.y =  255.0
            StatGame()
            //send to boat left
        }else if( sender.center.x == 145.5 &&
                  sender.center.y == 255.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ){
            sender.center.x = 365.5
            sender.center.y =  264.0
            
        }
    }
    
    @IBAction func wolfBtn(_ sender: UIButton) {
        
        //check goat right
        if (goat.center.x == 525.0 && goat.center.y ==  255.0 && boat.center.x == 525.5 && boat.center.y == 342.0){
            
            goat.center.x = 862.5
            goat.center.y =  255.0
        }
        //check carrot right
        if ( carrot.center.x == 525.0 &&
             carrot.center.y == 255.0 && boat.center.x == 525.5 && boat.center.y == 342.0 ){
            carrot.center.x = 770.5
            carrot.center.y =  242.0
            
        }
        //check carrot left
        if( carrot.center.x == 365.5 &&
            carrot.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ){
            carrot.center.x = 145.5
            carrot.center.y =  255.0
            
        }
        
        //check goat left
        if (goat.center.x == 365.5 && goat.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
            goat.center.x = 233.5
            goat.center.y = 255.0
        }
        //send to boat right
        if (sender.center.x == 677.5 && sender.center.y == 255.0) && boat.center.x == 525.5 && boat.center.y == 342.0 {
            sender.center.x = 525.0
            sender.center.y = 255.0
            //send from boat right
        }else if (sender.center.x == 525.0 && sender.center.y == 255.0) && boat.center.x == 525.5 && boat.center.y == 342.0 {
            sender.center.x = 677.5
            sender.center.y = 255.0
            //send from boat left
        }else if (sender.center.x == 365.5 && sender.center.y == 264.0) && boat.center.x == 365.5 && boat.center.y == 342.0 {
            
            sender.center.x = 67.5
            sender.center.y = 255.0
            StatGame()
            //send to boat left
        }else if (sender.center.x == 67.5 && sender.center.y == 255.0) && boat.center.x == 365.5 && boat.center.y == 342.0 {
            sender.center.x = 365.5
            sender.center.y = 264.0
            
        }
    }
    
    
    
    
    
    
    
    @IBAction func boatBtn(_ sender: UIButton) {
        
        if ( wolf.center.x == 525.0 && wolf.center.y == 255.0  && sender.center.x == 525.5 && sender.center.y == 342.0 ){
            // from right to left
            wolf.center.x = 365.5
            wolf.center.y = 264.0
            sender.center.x = 365.5
            sender.center.y = 342.0
        }else if ( wolf.center.x == 365.5 && wolf.center.y == 264.0  && sender.center.x == 365.5 && sender.center.y == 342.0 ){
            // from left to right
            
            wolf.center.x = 525.0
            wolf.center.y = 255.0
            sender.center.x = 525.5
            sender.center.y = 342.0
        }else if ( carrot.center.x == 525.0 && carrot.center.y == 255.0  && sender.center.x == 525.5 && sender.center.y == 342.0 ){
            // from right to left
            
            carrot.center.x = 365.5
            carrot.center.y = 264.0
            sender.center.x = 365.5
            sender.center.y = 342.0
        }else if ( carrot.center.x == 365.5 && carrot.center.y == 264.0  && sender.center.x == 365.5 && sender.center.y == 342.0 ){
            // from left to right
            
            carrot.center.x = 525.0
            carrot.center.y = 255.0
            sender.center.x = 525.5
            sender.center.y = 342.0
        }else if ( goat.center.x == 525.0 && goat.center.y == 255.0  && sender.center.x == 525.5 && sender.center.y == 342.0 ){
            // from right to left
            
            goat.center.x = 365.5
            goat.center.y = 264.0
            sender.center.x = 365.5
            sender.center.y = 342.0
        } else  if ( goat.center.x == 365.5 && goat.center.y == 264.0  && sender.center.x == 365.5 && sender.center.y == 342.0 ){
            // from left to right
            
            goat.center.x = 525.0
            goat.center.y = 255.0
            sender.center.x = 525.5
            sender.center.y = 342.0
        } else {
            // from left to right empty
            sender.center.x = 525.5
            sender.center.y = 342.0
        }
        
    }
    
    
    
    
    
    func StatGame(){
        
        if (goat.center.x == 233.5 && goat.center.y == 255.0 && carrot.center.x == 145.5 &&
            carrot.center.y ==  255.0 && wolf.center.x == 67.5
            && wolf.center.y == 255.0 ){
            statGame.text = "You win"
            
        }
        //        if (goat.center.x == 233.5 && goat.center.y == 255.0 &&  wolf.center.x == 67.5
        //            && wolf.center.y == 255.0  &&  carrot.center.x == 145.5 &&
        //            carrot.center.y ==  255.0){
        //            statGame.text = "You losed becouse wolf ate goat"
        //
        //        }
        if (goat.center.x == 862.5 && goat.center.y == 255.0 && carrot.center.x == 770.5 &&
            carrot.center.y ==  242.0 && wolf.center.x == 67.5
            && wolf.center.y == 255.0 ){
            statGame.text = "You losed becouse goat ate carrot "
            goat.center.x = 862.5
            goat.center.y = 255.0
            carrot.center.x = 770.5
            carrot.center.y =  242.0
            wolf.center.x = 677.5
            wolf.center.y = 255.0
        }
        if (goat.center.x == 862.5 && goat.center.y == 255.0 && carrot.center.x == 145.5 &&
            carrot.center.y ==  255.0 && wolf.center.x == 677.5
            && wolf.center.y == 255.0 ){
            statGame.text = "You losed becouse wolf ate goat "
            goat.center.x = 862.5
            goat.center.y = 255.0
            carrot.center.x = 770.5
            carrot.center.y =  242.0
            wolf.center.x = 677.5
            wolf.center.y = 255.0
        }
        if (goat.center.x == 233.5 && goat.center.y == 255.0 && carrot.center.x == 770.5 &&
            carrot.center.y ==  242.0 && wolf.center.x == 67.5
            && wolf.center.y == 255.0 ){
            statGame.text = "You losed becouse wolf ate goat"
            goat.center.x = 862.5
            goat.center.y = 255.0
            carrot.center.x = 770.5
            carrot.center.y =  242.0
            wolf.center.x = 677.5
            wolf.center.y = 255.0
            
        }
        if (goat.center.x == 233.5 && goat.center.y == 255.0 && carrot.center.x == 145.5 &&
            carrot.center.y ==  255.0 && wolf.center.x == 677.5
            && wolf.center.y == 255.0 ){
            statGame.text = "You losed becouse wolf ate goat"
            goat.center.x = 862.5
            goat.center.y = 255.0
            carrot.center.x = 770.5
            carrot.center.y =  242.0
            wolf.center.x = 677.5
            wolf.center.y = 255.0
            
        }
    }
    
    @IBAction func restart(_ sender: UIButton) {
        statGame.text = " "
        goat.center.x = 862.5
        goat.center.y = 255.0
        carrot.center.x = 770.5
        carrot.center.y =  242.0
        wolf.center.x = 677.5
        wolf.center.y = 255.0
        boat.center.x = 525.5
        boat.center.y = 342.0
    }
    
    
    @IBAction func solveBtn(_ sender: UIButton) {
        let tree:SimpleTree = SimpleTree(value: 0, children: [SimpleTree(value: 1) , SimpleTree(value: 2), SimpleTree(value: 3),  SimpleTree(value: 4), SimpleTree(value: 5), SimpleTree(value: 6), SimpleTree(value: 7),SimpleTree(value: 8), SimpleTree(value: 9), SimpleTree(value: 10), SimpleTree(value: 11),  SimpleTree(value: 12),  SimpleTree(value: 13) , SimpleTree(value: 14), SimpleTree(value: 15), SimpleTree(value: 16) ])
        let path = unformedSearch.resolveBFS(tree)
        for item in path {
            if (path[item] == 0)
            {              //check carrot right
                if (self.carrot.center.x == 525.0 && self.carrot.center.y == 255.0) && self.boat.center.x == 525.5 && self.boat.center.y == 342.0 {
                    self.carrot.center.x = 770.5
                    self.carrot.center.y = 242.0
                    
                }
                //check wolf right
                if (self.wolf.center.x == 525.0 && self.wolf.center.y == 255.0) && self.boat.center.x == 525.5 && self.boat.center.y == 342.0 {
                    self.wolf.center.x = 677.5
                    self.wolf.center.y = 255.0
                    
                }
                //check carrot left
                if (self.carrot.center.x == 365.5 && self.carrot.center.y == 264.0) && self.boat.center.x == 365.5 && self.boat.center.y == 342.0 {
                    self.carrot.center.x = 145.5
                    self.carrot.center.y = 255.0
                    
                }
                //check wolf left
                if (self.wolf.center.x == 365.5 && wolf.center.y == 264.0) && self.boat.center.x == 365.5 && self.boat.center.y == 342.0 {
                    self.wolf.center.x = 67.5
                    self.wolf.center.y = 255.0
                    
                }
                //send to boat right
                if (goat.center.x == 862.5 && goat.center.y ==  255.0 && self.boat.center.x == 525.5 && self.boat.center.y == 342.0){
                    
                    goat.center.x = 525.0
                    goat.center.y =  255.0
                    //send from boat right
                }else if (goat.center.x == 525.0 && goat.center.y ==  255.0 && self.boat.center.x == 525.5 && boat.center.y == 342.0){
                    
                    goat.center.x = 862.5
                    goat.center.y =  255.0
                    //send from boat right
                }else if (goat.center.x == 365.5 && goat.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
                    goat.center.x = 233.5
                    goat.center.y = 255.0
                    self.StatGame()
                    //send to boat left
                }else if (goat.center.x == 233.5 && goat.center.y == 255.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
                    goat.center.x = 365.5
                    goat.center.y = 264.0
                }
                
            }
            
            
            if path[item] == 1 {
                
                if ( wolf.center.x == 525.0 && wolf.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    wolf.center.x = 365.5
                    wolf.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( wolf.center.x == 365.5 && wolf.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    wolf.center.x = 525.0
                    wolf.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 525.0 && carrot.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    carrot.center.x = 365.5
                    carrot.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 365.5 && carrot.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    carrot.center.x = 525.0
                    carrot.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( goat.center.x == 525.0 && goat.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    goat.center.x = 365.5
                    goat.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                } else  if ( goat.center.x == 365.5 && goat.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    goat.center.x = 525.0
                    goat.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                } else {
                    // from left to right empty
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }
                
            }
            
            
            if path[item] == 2 {
                if (self.carrot.center.x == 525.0 && self.carrot.center.y == 255.0) && self.boat.center.x == 525.5 && self.boat.center.y == 342.0 {
                    self.carrot.center.x = 770.5
                    self.carrot.center.y = 242.0
                    
                }
                //check wolf right
                if (self.wolf.center.x == 525.0 && self.wolf.center.y == 255.0) && self.boat.center.x == 525.5 && self.boat.center.y == 342.0 {
                    self.wolf.center.x = 677.5
                    self.wolf.center.y = 255.0
                    
                }
                //check carrot left
                if (self.carrot.center.x == 365.5 && self.carrot.center.y == 264.0) && self.boat.center.x == 365.5 && self.boat.center.y == 342.0 {
                    self.carrot.center.x = 145.5
                    self.carrot.center.y = 255.0
                    
                }
                //check wolf left
                if (self.wolf.center.x == 365.5 && wolf.center.y == 264.0) && self.boat.center.x == 365.5 && self.boat.center.y == 342.0 {
                    self.wolf.center.x = 67.5
                    self.wolf.center.y = 255.0
                    
                }
                //send to boat right
                if (goat.center.x == 862.5 && goat.center.y ==  255.0 && self.boat.center.x == 525.5 && self.boat.center.y == 342.0){
                    
                    goat.center.x = 525.0
                    goat.center.y =  255.0
                    //send from boat right
                }else if (goat.center.x == 525.0 && goat.center.y ==  255.0 && self.boat.center.x == 525.5 && boat.center.y == 342.0){
                    
                    goat.center.x = 862.5
                    goat.center.y =  255.0
                    //send from boat right
                }else if (goat.center.x == 365.5 && goat.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
                    goat.center.x = 233.5
                    goat.center.y = 255.0
                    self.StatGame()
                    //send to boat left
                }else if (goat.center.x == 233.5 && goat.center.y == 255.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
                    goat.center.x = 365.5
                    goat.center.y = 264.0
                }
                
            }
            if path[item] == 3 {
                
                if ( wolf.center.x == 525.0 && wolf.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    wolf.center.x = 365.5
                    wolf.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( wolf.center.x == 365.5 && wolf.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    wolf.center.x = 525.0
                    wolf.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 525.0 && carrot.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    carrot.center.x = 365.5
                    carrot.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 365.5 && carrot.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    carrot.center.x = 525.0
                    carrot.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( goat.center.x == 525.0 && goat.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    goat.center.x = 365.5
                    goat.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                } else  if ( goat.center.x == 365.5 && goat.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    goat.center.x = 525.0
                    goat.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                } else {
                    // from left to right empty
                    //                    boat.center.x = 525.5
                    //                    boat.center.y = 342.0
                }
                
            }
            
            if path[item] == 4{//check wolf right
                if (wolf.center.x == 525.0 && wolf.center.y == 255.0) && boat.center.x == 525.5 && boat.center.y == 342.0 {
                    wolf.center.x = 677.5
                    wolf.center.y = 255.0
                    
                }
                //check goat right
                if (goat.center.x == 525.0 && goat.center.y ==  255.0 && boat.center.x == 525.5 && boat.center.y == 342.0){
                    
                    goat.center.x = 862.5
                    goat.center.y =  255.0
                }
                //check wolf left
                if (wolf.center.x == 365.5 && wolf.center.y == 264.0) && boat.center.x == 365.5 && boat.center.y == 342.0 {
                    wolf.center.x = 67.5
                    wolf.center.y = 255.0
                }
                //check goat left
                if (goat.center.x == 365.5 && goat.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
                    goat.center.x = 233.5
                    goat.center.y = 255.0
                }
                //send to boat right
                if ( carrot.center.x == 770.5 &&
                     carrot.center.y == 242.0 && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    carrot.center.x = 525.0
                    carrot.center.y =  255.0
                    //send from boat right
                }else if ( carrot.center.x == 525.0 &&
                           carrot.center.y == 255.0 && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    carrot.center.x = 770.5
                    carrot.center.y =  242.0
                    //send from boat left
                }else if( carrot.center.x == 365.5 &&
                          carrot.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    
                    carrot.center.x = 145.5
                    carrot.center.y =  255.0
                    StatGame()
                    //send to boat left
                }else if( carrot.center.x == 145.5 &&
                          carrot.center.y == 255.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    carrot.center.x = 365.5
                    carrot.center.y =  264.0
                    
                }
                
            }
            if path[item] == 5 {
                
                if ( wolf.center.x == 525.0 && wolf.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    wolf.center.x = 365.5
                    wolf.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( wolf.center.x == 365.5 && wolf.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    wolf.center.x = 525.0
                    wolf.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 525.0 && carrot.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    carrot.center.x = 365.5
                    carrot.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 365.5 && carrot.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    carrot.center.x = 525.0
                    carrot.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( goat.center.x == 525.0 && goat.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    goat.center.x = 365.5
                    goat.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                } else  if ( goat.center.x == 365.5 && goat.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    goat.center.x = 525.0
                    goat.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                } else {
                    // from left to right empty
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }
                
                
                
            }
            
            if (path[item] == 6){//check wolf right
                if (wolf.center.x == 525.0 && wolf.center.y == 255.0) && boat.center.x == 525.5 && boat.center.y == 342.0 {
                    wolf.center.x = 677.5
                    wolf.center.y = 255.0
                    
                }
                //check goat right
                if (goat.center.x == 525.0 && goat.center.y ==  255.0 && boat.center.x == 525.5 && boat.center.y == 342.0){
                    
                    goat.center.x = 862.5
                    goat.center.y =  255.0
                }
                //check wolf left
                if (wolf.center.x == 365.5 && wolf.center.y == 264.0) && boat.center.x == 365.5 && boat.center.y == 342.0 {
                    wolf.center.x = 67.5
                    wolf.center.y = 255.0
                }
                //check goat left
                if (goat.center.x == 365.5 && goat.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
                    goat.center.x = 233.5
                    goat.center.y = 255.0
                }
                //send to boat right
                if ( carrot.center.x == 770.5 &&
                     carrot.center.y == 242.0 && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    carrot.center.x = 525.0
                    carrot.center.y =  255.0
                    //send from boat right
                }else if ( carrot.center.x == 525.0 &&
                           carrot.center.y == 255.0 && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    carrot.center.x = 770.5
                    carrot.center.y =  242.0
                    //send from boat left
                }else if( carrot.center.x == 365.5 &&
                          carrot.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    
                    carrot.center.x = 145.5
                    carrot.center.y =  255.0
                    StatGame()
                    //send to boat left
                }else if( carrot.center.x == 145.5 &&
                          carrot.center.y == 255.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    carrot.center.x = 365.5
                    carrot.center.y =  264.0
                    
                }
                
            }
            if path[item] == 7 {
                
                if ( wolf.center.x == 525.0 && wolf.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    wolf.center.x = 365.5
                    wolf.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( wolf.center.x == 365.5 && wolf.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    wolf.center.x = 525.0
                    wolf.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 525.0 && carrot.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    carrot.center.x = 365.5
                    carrot.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 365.5 && carrot.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    carrot.center.x = 525.0
                    carrot.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( goat.center.x == 525.0 && goat.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    goat.center.x = 365.5
                    goat.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                } else  if ( goat.center.x == 365.5 && goat.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    goat.center.x = 525.0
                    goat.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                } else {
                    // from left to right empty
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }
                
            }
            
            
            
            
            
            if (path[item] == 8)
            {              //check carrot right
                if (self.carrot.center.x == 525.0 && self.carrot.center.y == 255.0) && self.boat.center.x == 525.5 && self.boat.center.y == 342.0 {
                    self.carrot.center.x = 770.5
                    self.carrot.center.y = 242.0
                    
                }
                //check wolf right
                if (self.wolf.center.x == 525.0 && self.wolf.center.y == 255.0) && self.boat.center.x == 525.5 && self.boat.center.y == 342.0 {
                    self.wolf.center.x = 677.5
                    self.wolf.center.y = 255.0
                    
                }
                //check carrot left
                if (self.carrot.center.x == 365.5 && self.carrot.center.y == 264.0) && self.boat.center.x == 365.5 && self.boat.center.y == 342.0 {
                    self.carrot.center.x = 145.5
                    self.carrot.center.y = 255.0
                    
                }
                //check wolf left
                if (self.wolf.center.x == 365.5 && wolf.center.y == 264.0) && self.boat.center.x == 365.5 && self.boat.center.y == 342.0 {
                    self.wolf.center.x = 67.5
                    self.wolf.center.y = 255.0
                    
                }
                //send to boat right
                if (goat.center.x == 862.5 && goat.center.y ==  255.0 && self.boat.center.x == 525.5 && self.boat.center.y == 342.0){
                    
                    goat.center.x = 525.0
                    goat.center.y =  255.0
                    //send from boat right
                }else if (goat.center.x == 525.0 && goat.center.y ==  255.0 && self.boat.center.x == 525.5 && boat.center.y == 342.0){
                    
                    goat.center.x = 862.5
                    goat.center.y =  255.0
                    //send from boat right
                }else if (goat.center.x == 365.5 && goat.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
                    goat.center.x = 233.5
                    goat.center.y = 255.0
                    self.StatGame()
                    //send to boat left
                }else if (goat.center.x == 233.5 && goat.center.y == 255.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
                    goat.center.x = 365.5
                    goat.center.y = 264.0
                }
                
            }
            
            
            if path[item] == 9 {
                
                if ( wolf.center.x == 525.0 && wolf.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    wolf.center.x = 365.5
                    wolf.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( wolf.center.x == 365.5 && wolf.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    wolf.center.x = 525.0
                    wolf.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 525.0 && carrot.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    carrot.center.x = 365.5
                    carrot.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 365.5 && carrot.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    carrot.center.x = 525.0
                    carrot.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( goat.center.x == 525.0 && goat.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    goat.center.x = 365.5
                    goat.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                } else  if ( goat.center.x == 365.5 && goat.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    goat.center.x = 525.0
                    goat.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                } else {
                    // from left to right empty
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }
                
            }
            
            
            
            if path[item] == 10 {
                //check goat right
                if (goat.center.x == 525.0 && goat.center.y ==  255.0 && boat.center.x == 525.5 && boat.center.y == 342.0){
                    
                    goat.center.x = 862.5
                    goat.center.y =  255.0
                }
                
                
                //check goat left
                if (goat.center.x == 365.5 && goat.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
                    goat.center.x = 233.5
                    goat.center.y = 255.0
                }
                //send to boat right
                if (wolf.center.x == 677.5 && wolf.center.y == 255.0) && boat.center.x == 525.5 && boat.center.y == 342.0 {
                    wolf.center.x = 525.0
                    wolf.center.y = 255.0
                    //send from boat right
                }else if (wolf.center.x == 525.0 && wolf.center.y == 255.0) && boat.center.x == 525.5 && boat.center.y == 342.0 {
                    wolf.center.x = 677.5
                    wolf.center.y = 255.0
                    //send from boat left
                }else if (wolf.center.x == 365.5 && wolf.center.y == 264.0) && boat.center.x == 365.5 && boat.center.y == 342.0 {
                    
                    wolf.center.x = 67.5
                    wolf.center.y = 255.0
                    StatGame()
                    //send to boat left
                }else if (sender.center.x == 67.5 && sender.center.y == 255.0) && boat.center.x == 365.5 && boat.center.y == 342.0 {
                    wolf.center.x = 365.5
                    wolf.center.y = 264.0
                    
                }
            }
            
            if path[item] == 11 {
                
                if ( wolf.center.x == 525.0 && wolf.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    wolf.center.x = 365.5
                    wolf.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( wolf.center.x == 365.5 && wolf.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    wolf.center.x = 525.0
                    wolf.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 525.0 && carrot.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    carrot.center.x = 365.5
                    carrot.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 365.5 && carrot.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    carrot.center.x = 525.0
                    carrot.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( goat.center.x == 525.0 && goat.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    goat.center.x = 365.5
                    goat.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                } else  if ( goat.center.x == 365.5 && goat.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    goat.center.x = 525.0
                    goat.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                } else {
                    // from left to right empty
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }
            }
            
            if path[item] == 12 {
                //check goat right
                if (goat.center.x == 525.0 && goat.center.y ==  255.0 && boat.center.x == 525.5 && boat.center.y == 342.0){
                    
                    goat.center.x = 862.5
                    goat.center.y =  255.0
                }
                
                
                //check goat left
                if (goat.center.x == 365.5 && goat.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
                    goat.center.x = 233.5
                    goat.center.y = 255.0
                }
                //send to boat right
                if (wolf.center.x == 677.5 && wolf.center.y == 255.0) && boat.center.x == 525.5 && boat.center.y == 342.0 {
                    wolf.center.x = 525.0
                    wolf.center.y = 255.0
                    //send from boat right
                }else if (wolf.center.x == 525.0 && wolf.center.y == 255.0) && boat.center.x == 525.5 && boat.center.y == 342.0 {
                    wolf.center.x = 677.5
                    wolf.center.y = 255.0
                    //send from boat left
                }else if (wolf.center.x == 365.5 && wolf.center.y == 264.0) && boat.center.x == 365.5 && boat.center.y == 342.0 {
                    
                    wolf.center.x = 67.5
                    wolf.center.y = 255.0
                    StatGame()
                    //send to boat left
                }else if (sender.center.x == 67.5 && sender.center.y == 255.0) && boat.center.x == 365.5 && boat.center.y == 342.0 {
                    wolf.center.x = 365.5
                    wolf.center.y = 264.0
                    
                }
            }
            
            
            if path[item] == 13{
                
                if ( wolf.center.x == 525.0 && wolf.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    wolf.center.x = 365.5
                    wolf.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( wolf.center.x == 365.5 && wolf.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    wolf.center.x = 525.0
                    wolf.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 525.0 && carrot.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    carrot.center.x = 365.5
                    carrot.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 365.5 && carrot.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    carrot.center.x = 525.0
                    carrot.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( goat.center.x == 525.0 && goat.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    goat.center.x = 365.5
                    goat.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                } else  if ( goat.center.x == 365.5 && goat.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    goat.center.x = 525.0
                    goat.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                } else {
                    // from left to right empty
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }
            }
            
            if (path[item] == 14)
            {              //check carrot right
                if (self.carrot.center.x == 525.0 && self.carrot.center.y == 255.0) && self.boat.center.x == 525.5 && self.boat.center.y == 342.0 {
                    self.carrot.center.x = 770.5
                    self.carrot.center.y = 242.0
                    
                }
                //check wolf right
                if (self.wolf.center.x == 525.0 && self.wolf.center.y == 255.0) && self.boat.center.x == 525.5 && self.boat.center.y == 342.0 {
                    self.wolf.center.x = 677.5
                    self.wolf.center.y = 255.0
                    
                }
                //check carrot left
                if (self.carrot.center.x == 365.5 && self.carrot.center.y == 264.0) && self.boat.center.x == 365.5 && self.boat.center.y == 342.0 {
                    self.carrot.center.x = 145.5
                    self.carrot.center.y = 255.0
                    
                }
                //check wolf left
                if (self.wolf.center.x == 365.5 && wolf.center.y == 264.0) && self.boat.center.x == 365.5 && self.boat.center.y == 342.0 {
                    self.wolf.center.x = 67.5
                    self.wolf.center.y = 255.0
                    
                }
                //send to boat right
                if (goat.center.x == 862.5 && goat.center.y ==  255.0 && self.boat.center.x == 525.5 && self.boat.center.y == 342.0){
                    
                    goat.center.x = 525.0
                    goat.center.y =  255.0
                    //send from boat right
                }else if (goat.center.x == 525.0 && goat.center.y ==  255.0 && self.boat.center.x == 525.5 && boat.center.y == 342.0){
                    
                    goat.center.x = 862.5
                    goat.center.y =  255.0
                    //send from boat right
                }else if (goat.center.x == 365.5 && goat.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
                    goat.center.x = 233.5
                    goat.center.y = 255.0
                    self.StatGame()
                    //send to boat left
                }else if (goat.center.x == 233.5 && goat.center.y == 255.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
                    goat.center.x = 365.5
                    goat.center.y = 264.0
                }
                
            }
            
            if path[item] == 15{
                
                if ( wolf.center.x == 525.0 && wolf.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    wolf.center.x = 365.5
                    wolf.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( wolf.center.x == 365.5 && wolf.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    wolf.center.x = 525.0
                    wolf.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 525.0 && carrot.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    carrot.center.x = 365.5
                    carrot.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                }else if ( carrot.center.x == 365.5 && carrot.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    carrot.center.x = 525.0
                    carrot.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }else if ( goat.center.x == 525.0 && goat.center.y == 255.0  && boat.center.x == 525.5 && boat.center.y == 342.0 ){
                    // from right to left
                    
                    goat.center.x = 365.5
                    goat.center.y = 264.0
                    boat.center.x = 365.5
                    boat.center.y = 342.0
                } else  if ( goat.center.x == 365.5 && goat.center.y == 264.0  && boat.center.x == 365.5 && boat.center.y == 342.0 ){
                    // from left to right
                    
                    goat.center.x = 525.0
                    goat.center.y = 255.0
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                } else {
                    // from left to right empty
                    boat.center.x = 525.5
                    boat.center.y = 342.0
                }
                
            }
            if (path[item] == 16)
            {              //check carrot right
                if (self.carrot.center.x == 525.0 && self.carrot.center.y == 255.0) && self.boat.center.x == 525.5 && self.boat.center.y == 342.0 {
                    self.carrot.center.x = 770.5
                    self.carrot.center.y = 242.0
                    
                }
                //check wolf right
                if (self.wolf.center.x == 525.0 && self.wolf.center.y == 255.0) && self.boat.center.x == 525.5 && self.boat.center.y == 342.0 {
                    self.wolf.center.x = 677.5
                    self.wolf.center.y = 255.0
                    
                }
                //check carrot left
                if (self.carrot.center.x == 365.5 && self.carrot.center.y == 264.0) && self.boat.center.x == 365.5 && self.boat.center.y == 342.0 {
                    self.carrot.center.x = 145.5
                    self.carrot.center.y = 255.0
                    
                }
                //check wolf left
                if (self.wolf.center.x == 365.5 && wolf.center.y == 264.0) && self.boat.center.x == 365.5 && self.boat.center.y == 342.0 {
                    self.wolf.center.x = 67.5
                    self.wolf.center.y = 255.0
                    
                }
                //send to boat right
                if (goat.center.x == 862.5 && goat.center.y ==  255.0 && self.boat.center.x == 525.5 && self.boat.center.y == 342.0){
                    
                    goat.center.x = 525.0
                    goat.center.y =  255.0
                    //send from boat right
                }else if (goat.center.x == 525.0 && goat.center.y ==  255.0 && self.boat.center.x == 525.5 && boat.center.y == 342.0){
                    
                    goat.center.x = 862.5
                    goat.center.y =  255.0
                    //send from boat right
                }else if (goat.center.x == 365.5 && goat.center.y == 264.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
                    goat.center.x = 233.5
                    goat.center.y = 255.0
                    self.StatGame()
                    //send to boat left
                }else if (goat.center.x == 233.5 && goat.center.y == 255.0 && boat.center.x == 365.5 && boat.center.y == 342.0 ) {
                    goat.center.x = 365.5
                    goat.center.y = 264.0
                }
            }
        }
    }
}



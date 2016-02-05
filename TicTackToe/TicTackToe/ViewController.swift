//
//  ViewController.swift
//  TicTackToe
//
//  Created by Sean Leighton on 2/3/16.
//  Copyright © 2016 Sean Leighton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessTR: UIButton!
    @IBOutlet weak var guessTC: UIButton!
    @IBOutlet weak var guessTL: UIButton!
    @IBOutlet weak var guessMR: UIButton!
    @IBOutlet weak var guessMC: UIButton!
    @IBOutlet weak var guessML: UIButton!
    @IBOutlet weak var guessBL: UIButton!
    @IBOutlet weak var guessBC: UIButton!
    @IBOutlet weak var guessBR: UIButton!
    
    @IBOutlet weak var btnResult: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    var playerTurn:Int = 0;
    var timer:NSTimer = NSTimer();
    var winner:Int = 0; // no winner
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidLayoutSubviews() {
        resultLabel.center = CGPointMake(resultLabel.center.x - 300, resultLabel.center.y);
        btnResult.center = CGPointMake(resultLabel.center.x - 300, resultLabel.center.y)
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }

    func doAnimation(){
        UIView.animateWithDuration(1) { () -> Void in
            
            self.resultLabel.center = CGPointMake(self.resultLabel.center.x + 400, self.resultLabel.center.y);
            self.btnResult.center = CGPointMake(self.btnResult.center.x + 300, self.resultLabel.center.y);
            
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func checkThree( btn1:UIButton, btn2:UIButton, btn3:UIButton)->Bool{
        if(btn1.tag == btn2.tag && btn1.tag == btn3.tag){
            winner = btn1.tag;
            return true;
        }
        else{
            return false;
        }
        
    }
    
    func checkGameOver(){
        var gameOver:Bool = false;
        gameOver = checkThree(guessTR, btn2: guessTC, btn3: guessTL);
        gameOver = gameOver && checkThree(guessMR, btn2: guessMC, btn3: guessML);
        gameOver = gameOver && checkThree(guessBL, btn2: guessBC, btn3: guessBR);
        gameOver = gameOver && checkThree(guessTR, btn2: guessMR, btn3: guessBR);
        gameOver = gameOver && checkThree(guessTC, btn2: guessMC, btn3: guessBC);
        gameOver = gameOver && checkThree(guessTL, btn2: guessML, btn3: guessBL);
        gameOver = gameOver && checkThree(guessTR, btn2: guessMC, btn3: guessBL);
        gameOver = gameOver && checkThree(guessTL, btn2: guessMC, btn3: guessBR);
        
        
        if(gameOver){
            
            if(winner == 1){
                resultLabel.text = "X Wins";
            }else{
                resultLabel.text = "O Wins";
            }
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true);
        }else {
            timer.invalidate();
        }
        
    
    }


    @IBAction func spaceGuessed(sender: AnyObject) {
        
        var btnPressed:UIButton = sender as! UIButton;
        
        
        // Check tag
        if(btnPressed.tag == 0){
            // Not Guessed
            if(playerTurn == 0){
                // X Turn
                btnPressed.tag = 1;
                playerTurn = 1;
            }
            else{
                // O Turn
                btnPressed.tag = 2;
                playerTurn = 0;
            }
        }else{
            // Already Guessed
            
        }
        
        
        
        
        
    }
    @IBAction func resetGamePressed(sender: AnyObject) {
        
        
    }
    
}


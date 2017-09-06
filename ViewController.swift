//
//  ViewController.swift
//  Magic 8 Ball
//

import UIKit

class ViewController: UIViewController {
    
    var randomSelection : Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var magicBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateMagicBall(){
        randomSelection = Int(arc4random_uniform(5))
        magicBall.image = UIImage(named: ballArray[randomSelection])
    }
    
    @IBAction func askPressed(_ sender: UIButton) {
        updateMagicBall()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateMagicBall()
    }

}

//
//  ViewController.swift
//  RandomFacts
//
//  Created by Jaime Jazareno III on 27/12/2017.
//  Copyright © 2017 Jaime Jazareno III. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func randomFact(_ sender: Any) {
        let array = ["""
                        A single cloud can weight more
                        than 1 million pounds.
                        """,
                     """
                        A human will eat on average
                        70 assorted insects
                        and 10 spiders while sleeping.
                        """,
                     """
                        James Buchanan, the 15th U.S.
                        president continuously
                        bought slaves with his own money
                        in order to free them.
                        """,
                     """
                        Men are 6 times more likely to
                        be struck by lightning than women.
                        """,
                     """
                        You cannot snore and dream at the same time.
                        """]
        let randomFact = Int(arc4random_uniform(UInt32(array.count)))
        label.text = array[randomFact]
    }
    
}


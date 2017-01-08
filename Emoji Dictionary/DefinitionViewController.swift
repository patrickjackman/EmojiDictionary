//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Patrick Jackman on 1/7/17.
//  Copyright © 2017 Patrick Jackman. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    

    @IBOutlet weak var emojiDefinition: UILabel!
    
    @IBOutlet weak var emojiCategory: UILabel!
    
    @IBOutlet weak var emojiYear: UILabel!
    
    @IBOutlet weak var DisplayEmoji: UILabel!
    
    var emoji = Emoji()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        DisplayEmoji.text = emoji.stringEmoji
        emojiDefinition.text = emoji.definition
        emojiYear.text = "Birth Year: \(emoji.birthYear)"
        emojiCategory.text = emoji.category
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

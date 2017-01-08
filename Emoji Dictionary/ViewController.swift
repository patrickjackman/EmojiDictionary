//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Patrick Jackman on 1/7/17.
//  Copyright © 2017 Patrick Jackman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var emoji : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    tableView.dataSource = self
    tableView.delegate = self
    emoji = makeEmojiArray()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return emoji.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emojis = emoji[indexPath.row]
            cell.textLabel?.text = emojis.stringEmoji
            return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedEmoji = emoji[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: selectedEmoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        var emoji1 = Emoji()
        emoji1.stringEmoji = "😃"
        emoji1.category = "Smiley"
        emoji1.birthYear = 2011
        emoji1.definition = "Standard Smiley"
        
        var emoji2 = Emoji()
        emoji2.stringEmoji = "😋"
        emoji2.category = "Smiley"
        emoji2.birthYear = 2012
        emoji2.definition = "Tongue Smiley"
        
        return [emoji1, emoji2]
    }

}


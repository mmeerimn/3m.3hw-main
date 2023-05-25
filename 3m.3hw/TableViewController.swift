//
//  TableViewController.swift
//  3m.3hw
//
//  Created by Meerim on 25.05.2023.
//

import UIKit

class TableViewController: UIViewController {
    
    var contacts: [Contact] =
    [Contact(title: "Lana Del Rey", number: "‭+1 (443) 519-3181‬", image: "1"),
    Contact(title: "Selena Gomez", number: "‭+1 (454) 534-3541‬", image: "2"),
    Contact(title: "Billie Eilish", number: "‭+1 (123) 875-7643‬", image: "3"),
    Contact(title: "Ariana Grande", number: "‭+1 (897) 339-4441‬", image: "4"),
    Contact(title: "Miley Cyrus", number: "‭+1 (312) 567-1253‬", image: "5"),
    Contact(title: "Justin Biber", number: "‭+1 (134) 675-4235‬", image: "6"),
    Contact(title: "Ed Sheeran", number: "‭+1 (365) 324-5678‬", image: "7"),
    Contact(title: "Sam Smith", number: "‭+1 (674) 567-7658", image: "8"),
    Contact(title: "Post Malone", number: "‭+1 (153) 324-6588‬", image: "9"),
    Contact(title: "Travis Scott", number: "‭+1 (635) 142-7876‬", image: "10"),
    Contact(title: "Kendrick Lamar", number: "‭+1 (567) 652-6576‬", image: "11"),
    Contact(title: "Playboi Carti", number: "‭+1 (906) 215-4536‬", image: "12")]
    
    
    @IBOutlet weak var ContactTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ContactTableView.dataSource = self
    }
}

extension TableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = contacts[indexPath.row].title
        cell.detailTextLabel?.text = contacts[indexPath.row].number
        cell.imageView?.image = UIImage(named: contacts[indexPath.row].image)
        return cell
    }
    
    
}


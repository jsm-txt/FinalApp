//
//  ViewController.swift
//  FinalApp
//
//  Created by Jose Salazar Mendez on 4/29/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var userList = [
        Users(title: "Facebook CEO", name: "Mark Zuck", description: "Mark Elliot Zuckerberg (/ˈzʌkərbɜːrɡ/; born May 14, 1984) is an American media magnate, internet entrepreneur, and philanthropist. He is known for co-founding the social media website Facebook and its parent company Meta Platforms (formerly Facebook, Inc.), of which he is the chairman, chief executive officer, and controlling shareholder"),
        Users(title: "No Longer part of Twitter", name:"Jack", description: "Jack Patrick Dorsey (born November 19, 1976)[4] is an American Internet entrepreneur, programmer, and philanthropist who is the co-founder and former CEO of Twitter, as well as the founder and principal executive officer of Block, Inc., a financial payments company. "),
        Users(title: "World's Richest", name: "Elon Musk", description: "Tesla, twitter2.0"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.register(PastOrderCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        setUpTableView()
        //tabBarItem.selectedImage = tabBarItem.selectedImage?.withRenderingMode(.alwaysOriginal)
//        tabBarItem = UITabBarItem(title: "Users", image: UIImage(named: "tab-box"), tag: 0)
        // Do any additional setup after loading the view.

    }
    
    func setUpTableView(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
    }
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = userList[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
        let vc = storyboard?.instantiateViewController(withIdentifier: "details") as! UserInfo
        navigationController?.pushViewController(vc, animated: true)
        vc.userDesc = userList[indexPath.row].description
        vc.userTitle = userList[indexPath.row].title
            
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

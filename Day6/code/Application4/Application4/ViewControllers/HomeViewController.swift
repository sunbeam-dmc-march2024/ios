//
//  HomeViewController.swift
//  Application4
//
//  Created by Amit Kulkarni on 12/07/24.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var blogs: [Blog] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        loadAllBlogs()
    }
    
    func loadAllBlogs() {
        // create url
        let url = createUrl(path: "blog/")
        
        // get the token
        let token = UserDefaults.standard.value(forKey: "token") as! String
        
        // create headers
        let headers: HTTPHeaders = [
            "token": token
        ]
        
        // create request
        let request = AF.request(url, method: .get, encoding: JSONEncoding.default, headers: headers)
        
        // send the request and get the resposne
        request.response(completionHandler: {response in
            
            switch response.result {
                
            case let .success(data):
                if let data = data {
                    let result = try! JSONSerialization.jsonObject(with: data) as! [String: Any]
                    if result["status"] as! String == "success" {
                        
                        // get all blogs
                        let tempBlogs = result["data"] as! [[String: Any]]
                        self.blogs.removeAll()
                        for obj in tempBlogs {
                            self.blogs.append(Blog(id: obj["id"] as? Int, title: obj["BlogTitle"] as? String, contents: obj["contents"] as? String, image: obj["image"] as? String))
                        }
                        
                        // refresh table view
                        self.tableView.reloadData()
                    }
                }
                
            case let .failure(error):
                print(error)
        }
            
        })
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return blogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let blog = blogs[indexPath.row]
        cell.textLabel?.text = blog.title

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

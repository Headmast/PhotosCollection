//
//  ViewController.swift
//  PhotosCollection
//
//  Created by Kirill Klebanov on 24.07.2022.
//

import Foundation
import UIKit

struct Post {
    let id: Int
    let title: String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("Start load data")
        loadData {[weak self] post in
            self?.resultLabel.text = "Success" + " " + String(post.id) + " " + post.title
            print("Finish load data")
        }
        
        print("Start global sync")
        DispatchQueue.global().sync {
            sleep(1)
            print("Finish global sync")
        }
        
        print("Start global async")
        DispatchQueue.global().async {
            sleep(1)
            print("Finish global async")
        }
        
        print("Finish view did load")
    }
    
    private func loadData() {
        let session = URLSession(configuration: .default)
        guard let url = URL(string: "https://my-json-server.typicode.com/Headmast/lightJSONServer/posts/2") else {return}
        let dataTask = session.dataTask(with: url) {data, response, error in
            if let json = try? JSONSerialization.jsonObject(with: data!) as? [String:Any],
               let id = json["id"] as? Int,
               let title = json["title"] as? String {
                //print ("Success" + " " + String(id) + " " + title)
                DispatchQueue.main.async { [weak self]  in
                    self?.resultLabel.text = "Success" + " " + String(id) + " " + title
                }
            }
        }
        dataTask.resume()
    }
    
    private func loadData(with completion: @escaping (_ post: Post) -> Void) {
        let session = URLSession(configuration: .default)
        guard let url = URL(string: "https://my-json-server.typicode.com/Headmast/lightJSONServer/posts/2") else {return}
        let dataTask = session.dataTask(with: url) {data, response, error in
            if let json = try? JSONSerialization.jsonObject(with: data!) as? [String:Any],
               let id = json["id"] as? Int,
               let title = json["title"] as? String {
                let post = Post(id: id, title: title)
                //print ("Success" + " " + String(id) + " " + title)
                DispatchQueue.main.async {
                    completion(post)
                }
            }
        }
        dataTask.resume()
    }
    
}


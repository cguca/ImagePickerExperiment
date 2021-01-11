//
//  ViewController.swift
//  ImagePickerExperiment
//
//  Created by Cary Guca on 1/11/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func experiment(_ sender: Any) {
        let nextController = UIImagePickerController()
        present(nextController, animated: true, completion: nil)
    }
    
    @IBAction func experimentAlert(_ sender: Any) {
        let controller = UIAlertController()
        controller.title = "Test Alert"
        controller.message = "This is a test alert"
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {action in self.dismiss(animated: true, completion: nil)})
        controller.addAction(okAction)
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func experimentActivity(_ sender: Any) {
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)
    }
    
}


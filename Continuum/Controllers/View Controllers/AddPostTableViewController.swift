//
//  AddPostTableViewController.swift
//  Continuum
//
//  Created by Colby Harris on 3/31/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class AddPostTableViewController: UITableViewController {
    
    
    
    //MARK: - Outlets
    
    @IBOutlet weak var selectImageButton: UIButton!
    @IBOutlet weak var addCaptionTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.selectImageButton.setTitle("Select Image", for: .normal)
        addCaptionTextField.text = nil
        photoImageView.image = nil
    }
    //MARK: - Actions
    @IBAction func selectImageButtonTapped(_ sender: Any) {
        
        photoImageView.image = #imageLiteral(resourceName: "spaceEmptyState")
        selectImageButton.setTitle("", for: .normal)
        
        
    }
    
    @IBAction func addPostButtonTapped(_ sender: Any) {
        createPost()
        
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        tabBarController?.selectedIndex = 0

    }
    

    func createPost() {
        guard let image = photoImageView.image, let caption = addCaptionTextField.text else { return }
        PostController.shared.createPostWith(image: image, caption: caption) { (post) in
            
        }
        tabBarController?.selectedIndex = 0

        //navigationController?.popViewController(animated: true)
    }
    
}

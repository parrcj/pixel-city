//
//  PopVC.swift
//  pixel-city
//
//  Created by Christopher Parr on 18/02/2019.
//  Copyright © 2019 Christopher Parr. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    
    //Chris' challenge ads
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var numberOfViewsLabel: UILabel!
    @IBOutlet weak var dateTakenLabel: UILabel!
    
    var passedImage: UIImage!
    
    //Chris's challenge ads
    
    var passedDateTaken: String!
    var passedUserName: String!
    var passedNumberOfViews: String!
    
    func initData(forImage image: UIImage, forPhotoInfo info: PhotoInfo){
        self.passedImage = image
        self.passedUserName = info.userName
        self.passedDateTaken = info.dateTaken
        self.passedNumberOfViews = info.numberOfViews
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        userNameLabel.text = passedUserName
        numberOfViewsLabel.text = passedNumberOfViews
        dateTakenLabel.text = passedDateTaken
        addDoubleTap()
    }
    
    func addDoubleTap(){
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped(){
        dismiss(animated: true, completion: nil)
    }

}

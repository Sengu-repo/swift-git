# swift-git
     
     import UIKit
      
    class ViewController : UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
             setupUI()
        }        
        
        fileprivate func setupUI() {
           view.addSubView(UIView())
        }
        
        // MARK: - Setup Spinner
        func setupSpinner() {
            spinningActivityIndicator.setupTSSpinnerView()
        }
        
     }
     

import UIKit

///
/// 1. Create a module VIPER style that will get User from ApiService
/// 2. Module should not use callbacks and must know nothing about API
///
///
///

class ViewController: UIViewController {
    
    let apiService = ApiService()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        apiService.user(by: UUID()) { user in
            debugPrint(user)
        }
    }

}

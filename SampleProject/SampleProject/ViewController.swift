import UIKit

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

import UIKit

///
/// 1. Create a module in a VIPER style that will get User from ApiService
/// 2. Module should not use callbacks and must know nothing about API layer
/// 3. RxSwift already imported using SPM
/// 4. Add a button on that module which becomes enabled when User name is displayed
/// 5. Clicking on that button should trigger Module's delegate method
/// 6. Implement somewhere delegate of the module and output a message
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

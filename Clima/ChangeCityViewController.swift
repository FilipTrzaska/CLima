import UIKit

protocol ChangeCityDelegate {
    func userEnteredANewCItyName(city: String)
}


class ChangeCityViewController: UIViewController {

    var delegate : ChangeCityDelegate?
    
    @IBOutlet weak var changeCityTextField: UITextField!

    
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredANewCItyName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    

    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

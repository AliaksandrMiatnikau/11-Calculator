

import UIKit

class ViewController: UIViewController {
    private var numberFromScreen: Double = 0
    private var firstNum: Double = 0
    private var operation: Int = 0
    private var mathSign: Bool = false
    @IBOutlet weak var result: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
        
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        } else {
            result.text = result.text! + String(sender.tag)
        }
        numberFromScreen = Double(result.text!)!
    }
    
    
    @IBAction func onButtons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15{
            firstNum = Double(result.text!)!
            if sender.tag == 11 { // divide
                result.text = "/"            }
            else if sender.tag == 12 { // multiply
                result.text = "x"            }
            else if sender.tag == 13 { // minus
                result.text = "-"            }
            else if sender.tag == 14 { //plus
                result.text = "+";
            }
            operation = sender.tag
        mathSign = true
        }
        else if sender.tag == 15 {
            if operation == 11{
                result.text = String(firstNum / numberFromScreen)
            }
            if operation == 12{
                result.text = String(firstNum * numberFromScreen)
            }
            if operation == 13{
                result.text = String(firstNum - numberFromScreen)
            }
            if operation == 14{
                result.text = String(firstNum + numberFromScreen)
            }
        }
        else if sender.tag == 10 {
            result.text = ""
            firstNum = 0
            numberFromScreen = 0
            operation = 0
        }
    }
   
    @IBOutlet weak var resultLabel: UILabel!
    
   override func viewDidLoad() {
        super.viewDidLoad()
        }
}


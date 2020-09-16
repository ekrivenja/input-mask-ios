//
// Project «InputMask»
// Created by Jeorge Taflanidi
//


import UIKit
import InputMask
import MaterialComponents.MaterialTextFields


open class ViewController: UIViewController, MaskedTextFieldDelegateListener {
    
    @IBOutlet weak var listener: MaskedTextFieldDelegate!
    @IBOutlet weak var field: MDCTextField!
    
    var fieldController: MDCTextInputControllerOutlined?
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        listener.affinityCalculationStrategy = .prefix
        listener.affineFormats = [
            "8 ([000]) [000] [00] [00]"
        ]
        
        fieldController = MDCTextInputControllerOutlined(textInput: field)
        
        // any of this fixes UI issue
//        listener.primaryMaskFormat = "[000] [00] [00]"
//        listener.autocompleteOnFocus = false
    }
    
    open func textField(
        _ textField: UITextField,
        didFillMandatoryCharacters complete: Bool,
        didExtractValue value: String
    ) {
        print(value)
    }
    
}

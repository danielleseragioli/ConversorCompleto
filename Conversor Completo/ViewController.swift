//
//  ViewController.swift
//  Conversor Completo
//
//  Created by user212279 on 30/12/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelTipo: UILabel!
    @IBOutlet weak var labelResultado: UILabel!
    
    @IBOutlet weak var viewPeso: UIView!
    @IBOutlet weak var viewDinheiro: UIView!
    @IBOutlet weak var viewMedida: UIView!
    @IBOutlet weak var viewTemperatura: UIView!
    
    
    @IBOutlet weak var textFieldPeso: UITextField!
    @IBOutlet weak var textFieldDinheiro: UITextField!
    @IBOutlet weak var textFieldMedida: UITextField!
    @IBOutlet weak var textFieldTemperatura: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
     MostrarView(indice: 1)
    }
    
   
    func MostrarView ( indice : Int ) {
        
        viewPeso.isHidden = true
        viewDinheiro.isHidden = true
        viewMedida.isHidden = true
        viewTemperatura.isHidden = true
        
        switch indice {
        case 1:
            labelTipo.text = "Quilograma --> Libra"
            labelResultado.text = ""
            viewPeso.isHidden = false
        case 2:
            labelTipo.text = "Real --> Dólar"
            labelResultado.text = ""
            viewDinheiro.isHidden = false
        case 3:
            labelTipo.text = "Quilômetro --> Milha"
            labelResultado.text = ""
            viewMedida.isHidden = false
        case 4:
            labelTipo.text = "Celcius --> Fahrenheit"
            labelResultado.text = ""
            viewTemperatura.isHidden = false
            
        default:
            labelResultado.text = ""
        }
        
    }
    

    @IBAction func buttonConverterPeso(_ sender: Any) {
        if let conv = Float(textFieldPeso.text!){
            let result: Float = conv * 2.20462
            labelResultado.text = "\(result) Libras"
        }
    }
    
    @IBAction func buttonConverterDinheiro(_ sender: Any) {
        if let conv = Float(textFieldDinheiro.text!){
            let result: Float = conv * 0.17
            labelResultado.text = "\(result) Dólares"
        }
    }
    
    @IBAction func buttonConverterMedida(_ sender: Any) {
        if let conv = Float(textFieldMedida.text!){
            let result: Float = conv * 0.621371
            labelResultado.text = "\(result) Milhas"
        }
    }
    
    @IBAction func buttonConverterTemperatura(_ sender: Any) {
        if let conv = Float(textFieldTemperatura.text!){
            let result: Float = (conv * 1.8)+32
            labelResultado.text = "\(result) ºF"
        }
    }
    
    
    
    @IBAction func mostrarPeso(_ sender: Any) {
        MostrarView(indice: 1)
    }
    
    @IBAction func mostrarDinheiro(_ sender: Any) {
        MostrarView(indice: 2)
    }
    
    @IBAction func mostrarMedida(_ sender: Any) {
        MostrarView(indice: 3)
    }
    
    @IBAction func mostrarTemperatura(_ sender: Any) {
        MostrarView(indice: 4)
    }
    
    
}


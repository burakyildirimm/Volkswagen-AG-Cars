//
//  ViewController.swift
//  Volkswagen AG Cars
//
//  Created by Burak Yıldırım on 22.05.2020.
//  Copyright © 2020 Burak Yıldırım. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    lazy var brandPicker: McTextField = {
        let textField = McTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.attributedPlaceholder =
            NSAttributedString(string: "Marka?", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        textField.font = .systemFont(ofSize: 12, weight: .regular)
        textField.textColor = .darkGray
        textField.backgroundColor = #colorLiteral(red: 0.8666666667, green: 0.8666666667, blue: 0.8666666667, alpha: 1)
        let paddingView = UIView(frame: CGRect (x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        textField.layer.cornerRadius = 5
        textField.addTarget(self, action: #selector(keyboardDismiss), for: .allTouchEvents)
        return textField
    }()
    
    lazy var modelNameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Model Adı"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        let paddingView = UIView(frame: CGRect (x: 0, y: 0, width: 60, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        textField.layer.shadowRadius = 3
        textField.layer.shadowOpacity = 0.5
        textField.layer.shadowOffset = CGSize(width: 0, height: 3)
        textField.layer.shadowColor = UIColor.gray.cgColor
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        return textField
    }()
    
    lazy var fuelPicker: McTextField = {
        let textField = McTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.attributedPlaceholder =
            NSAttributedString(string: "Fuel?", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        textField.font = .systemFont(ofSize: 12, weight: .regular)
        textField.textColor = .darkGray
        textField.backgroundColor = #colorLiteral(red: 0.8666666667, green: 0.8666666667, blue: 0.8666666667, alpha: 1)
        let paddingView = UIView(frame: CGRect (x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        textField.layer.cornerRadius = 5
        textField.addTarget(self, action: #selector(keyboardDismiss), for: .allTouchEvents)
        return textField
    }()
    
    lazy var tourquePicker: McTextField = {
        let textField = McTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.attributedPlaceholder =
            NSAttributedString(string: "Tourque?", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        textField.font = .systemFont(ofSize: 12, weight: .regular)
        textField.textColor = .darkGray
        textField.backgroundColor = #colorLiteral(red: 0.8666666667, green: 0.8666666667, blue: 0.8666666667, alpha: 1)
        let paddingView = UIView(frame: CGRect (x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        textField.layer.cornerRadius = 5
        textField.addTarget(self, action: #selector(keyboardDismiss), for: .allTouchEvents)
        return textField
    }()
    
    lazy var horsepowerPicker: McTextField = {
        let textField = McTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.attributedPlaceholder =
            NSAttributedString(string: "Horse Power?", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        textField.font = .systemFont(ofSize: 12, weight: .regular)
        textField.textColor = .darkGray
        textField.backgroundColor = #colorLiteral(red: 0.8666666667, green: 0.8666666667, blue: 0.8666666667, alpha: 1)
        let paddingView = UIView(frame: CGRect (x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        textField.layer.cornerRadius = 5
        textField.addTarget(self, action: #selector(keyboardDismiss), for: .allTouchEvents)
        return textField
    }()
    
    lazy var gearPicker: McTextField = {
        let textField = McTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.attributedPlaceholder =
            NSAttributedString(string: "Gear?", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        textField.font = .systemFont(ofSize: 12, weight: .regular)
        textField.textColor = .darkGray
        textField.backgroundColor = #colorLiteral(red: 0.8666666667, green: 0.8666666667, blue: 0.8666666667, alpha: 1)
        let paddingView = UIView(frame: CGRect (x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        textField.layer.cornerRadius = 5
        textField.addTarget(self, action: #selector(keyboardDismiss), for: .allTouchEvents)
        return textField
    }()
    
    lazy var seatsPicker: McTextField = {
        let textField = McTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.attributedPlaceholder =
            NSAttributedString(string: "Seats?", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        textField.font = .systemFont(ofSize: 12, weight: .regular)
        textField.textColor = .darkGray
        textField.backgroundColor = #colorLiteral(red: 0.8666666667, green: 0.8666666667, blue: 0.8666666667, alpha: 1)
        let paddingView = UIView(frame: CGRect (x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        textField.layer.cornerRadius = 5
        textField.addTarget(self, action: #selector(keyboardDismiss), for: .allTouchEvents)
        return textField
    }()
    
    lazy var colorPicker: McTextField = {
        let textField = McTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.attributedPlaceholder =
            NSAttributedString(string: "Color?", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        textField.font = .systemFont(ofSize: 12, weight: .regular)
        textField.textColor = .darkGray
        textField.backgroundColor = #colorLiteral(red: 0.8666666667, green: 0.8666666667, blue: 0.8666666667, alpha: 1)
        let paddingView = UIView(frame: CGRect (x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        textField.layer.cornerRadius = 5
        textField.addTarget(self, action: #selector(keyboardDismiss), for: .allTouchEvents)
        return textField
    }()
    
    lazy var orderButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.setTitle("Sipariş Ver", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(orderClicked(_:)), for: .touchUpInside)
        button.layer.cornerRadius = 20
        
        return button
    }()
    
    
    lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.text = "0 €"
        label.font = UIFont(name: "Helvetica", size: 15)
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        
        
    }
    
    
    func setupLayout() {
        
        
        view.addSubview(brandPicker)
        NSLayoutConstraint.activate([
            brandPicker.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            brandPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            brandPicker.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            brandPicker.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        view.addSubview(modelNameTextField)
        NSLayoutConstraint.activate([
            modelNameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 90),
            modelNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            modelNameTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            modelNameTextField.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        view.addSubview(fuelPicker)
        NSLayoutConstraint.activate([
            fuelPicker.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            fuelPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fuelPicker.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            fuelPicker.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        view.addSubview(tourquePicker)
        NSLayoutConstraint.activate([
            tourquePicker.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 210),
            tourquePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tourquePicker.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            tourquePicker.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        view.addSubview(horsepowerPicker)
        NSLayoutConstraint.activate([
            horsepowerPicker.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 270),
            horsepowerPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            horsepowerPicker.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            horsepowerPicker.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        view.addSubview(gearPicker)
        NSLayoutConstraint.activate([
            gearPicker.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 330),
            gearPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            gearPicker.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            gearPicker.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        view.addSubview(seatsPicker)
        NSLayoutConstraint.activate([
            seatsPicker.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 390),
            seatsPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            seatsPicker.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            seatsPicker.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        view.addSubview(colorPicker)
        NSLayoutConstraint.activate([
            colorPicker.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 450),
            colorPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            colorPicker.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            colorPicker.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        view.addSubview(orderButton)
        NSLayoutConstraint.activate([
            orderButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 510),
            orderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            orderButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            orderButton.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        view.addSubview(priceLabel)
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 570),
            priceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            priceLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            priceLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        
        modelPickerSetup(picker: brandPicker, data: [["Audi","Porsche","Bentley"]])
        modelPickerSetup(picker: fuelPicker, data: [["Diesel","Petrol","Hybrid"]])
        modelPickerSetup(picker: tourquePicker, data: [["680","770","960"]])
        modelPickerSetup(picker: horsepowerPicker, data: [["700","880","1000"]])
        modelPickerSetup(picker: gearPicker, data: [["6","7","9"]])
        modelPickerSetup(picker: seatsPicker, data: [["Leather","Alcantara","Fabric"]])
        modelPickerSetup(picker: colorPicker, data: [["Black","White","Metalic","Red", "Yellow", "Blue"]])
    }
    
    @objc func orderClicked(_ button: UIButton) {
        
        if ( brandPicker.text != "" && modelNameTextField.text != "" && fuelPicker.text != "" && tourquePicker.text != "" && horsepowerPicker.text != "" && gearPicker.text != "" && seatsPicker.text != "" && colorPicker.text != "" ) {
            
            if (brandPicker.text == "Audi") {
                
                do {
                    let audifact = AudiFactory()
                    let a7sportback = try audifact.createCar(brand: "Audi", model: "A7 Sport", fueltype: "Diesel", tourque: 770, horsePower: 680, gear: 9, seats: "leather", color: "Black")
                    let a7sportbackPricing = audifact.pricing(brand: "Audi", model: "A7 Sport", fueltype: "Diesel", tourque: 770, horsePower: 680, gear: 9, seats: "leather", color: "Black")
                    
                    
                    let price = String(a7sportbackPricing) + " €"
                    
                    priceLabel.text = price
                    
                    
                } catch {
                    print("Sorry, We cannot create car in these criteria !")
                }
                
            }
              
            
        } else if(brandPicker.text == "Porsche") {
            do {
                
                let porschefact = PorscheFactory()
                let gt3sport = try porschefact.createCar(brand: "Porsche", model: "GT3 Sport", fueltype: "Diesel", tourque: 770, horsePower: 680, gear: 9, seats: "leather", color: "Black")
                let gt3sportPricing = porschefact.pricing(brand: "Porsche", model: "GT3 Sport", fueltype: "Diesel", tourque: 770, horsePower: 680, gear: 9, seats: "leather", color: "Black")
                
                let price = String(gt3sportPricing) + " €"
                
                priceLabel.text = price
                
            } catch {
                print("Sorry, We cannot create car in these criteria !")
            }
        } else if(brandPicker.text == "Bentley") {
            
            do {
                
                let bentleyfact = BentleyFactory()
                let continentalSupersport = try bentleyfact.createCar(brand: "Bentley", model: "Continental Supersport", fueltype: "Diesel", tourque: 770, horsePower: 680, gear: 9, seats: "leather", color: "Black")
                let continentalSupersportPricing = bentleyfact.pricing(brand: "Bentley", model: "Continental Supersport", fueltype: "Diesel", tourque: 770, horsePower: 680, gear: 9, seats: "leather", color: "Black")
                
                let price = String(continentalSupersportPricing) + " €"
                
                priceLabel.text = price
                
            } catch {
                print("Sorry, We cannot create car in these criteria !")
            }
            
        } else {
            priceLabel.text = "Lütfen geçerli bir marka giriniz !"
        }
        
    }
    
    
    @objc func keyboardDismiss() {
        view.endEditing(true)
    }
    
    
    
    private func modelPickerSetup(picker: McTextField, data: [[String]]) {
        let mcInputView = McPicker(data: data)
        mcInputView.backgroundColor = .black
        mcInputView.toolbarItemsFont = .systemFont(ofSize: 12, weight: .regular)
        mcInputView.backgroundColorAlpha = 0.2
        mcInputView.toolbarCancelButtonColor = .gray
        mcInputView.toolbarDoneButtonColor = .darkGray
        mcInputView.toolbarBarTintColor = #colorLiteral(red: 0.8789163232, green: 0.8789163232, blue: 0.8789163232, alpha: 1)
        mcInputView.pickerBackgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)
        mcInputView.pickerSelectRowsForComponents = [0: [(data.count/2): true]]
        picker.inputViewMcPicker = mcInputView
        
        let global = { self.keyboardDismiss() }
        
        picker.doneHandler = { [weak picker] (selections) in
            picker?.text = selections[0]!
            //    self.delegate?.planDetailCell(self, timePicker: "\(hour):\(minute)", cellNumber: self.cellNumber)
            global()
        }
        
        picker.selectionChangedHandler = { [weak picker] (selections, componentThatChanged) in
            picker?.text = selections[0]!
            //    self.delegate?.planDetailCell(self, timePicker: "\(selections[0]!):\(selections[1]!)", cellNumber: self.cellNumber)
            global()
        }
        
        picker.cancelHandler = { [weak picker] in
            //       timePicker?.text = self.placeListModel?.time
            //     if let placeListModel = self.placeListModel {
            //       self.delegate?.planDetailCell(self, timePicker: placeListModel.time, cellNumber: self.cellNumber)
            //            }
            global()
        }
        
        picker.textFieldWillBeginEditingHandler = { [weak picker] (selections) in
            //            if let dataTime = self.placeListModel?.time.components(separatedBy: ":") {
            //                if dataTime.count == 2 {
            //                    let hour = data[0].filter { $0 == dataTime[0] }.first
            //                    let minute = data[1].filter { $0 == dataTime[1] }.first
            //                    guard let safeHour = hour, let indexOfHour = data[0].firstIndex(of: safeHour),
            //                        let safeMinute = minute, let indexOfMin = data[1].firstIndex(of: safeMinute)  else { return }
            //                    mcInputView.pickerSelectRowsForComponents = [0: [indexOfHour: true], 1: [indexOfMin: true]]
            //                }
            //            }
            if picker?.text == "Seçiniz" {
                // Selections always default to the first value per component
                picker?.text = selections[0]
                //                self.delegate?.planDetailCell(self, timePicker: "\(selections[0]!):\(selections[1]!)", cellNumber: self.cellNumber)
            }
        }
    }

    
    
}


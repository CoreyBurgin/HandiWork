//
//  ViewController.swift
//  Handiwork
//
//  Created by Corey Burgin on 9/8/20.
//  Copyright © 2020 Corey Burgin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let canvas = Canvas()
    
    let undoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Undo", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(handleUndo), for: .touchUpInside)
        return button
    }()
    
    @objc fileprivate func handleUndo() {
        print("Undo lines drawn")
        canvas.undo()
    }
    
    let clearButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Clear", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(handleClear), for: .touchUpInside)
        return button
    }()
    
    @objc func handleClear() {
        canvas.clear()
    }
    
    
    let yellowButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .yellow
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(handleColorChange), for: .touchUpInside)
        return button
    }()
    
    let redButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(handleColorChange), for: .touchUpInside)
        return button
    }()
    
    let blueButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .blue
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(handleColorChange), for: .touchUpInside)
        return button
    }()
   
    
    
    @objc fileprivate func handleColorChange(button: UIButton) {
        canvas.setStrokeColor(color: button.backgroundColor ?? .black)
    }
       
    
    
    let slider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 1
        slider.maximumValue = 10
        slider.addTarget(self, action: #selector(handleSliderChange), for: .valueChanged)
        return slider
    }()
    
    
    @objc fileprivate func handleSliderChange() {
        canvas.setStrokeWidth(width: slider.value)
    }
    
    
    override func loadView() {
        self.view = canvas
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        canvas.backgroundColor = .black
        setupLayout()
    }
    
    fileprivate func setupLayout() {
        let colorStackView = UIStackView(arrangedSubviews: [yellowButton, redButton, blueButton])
        colorStackView.distribution = .fillEqually
        
        
        let stackView = UIStackView(arrangedSubviews: [
            undoButton,
            clearButton,
            colorStackView,
            slider
            ])
        stackView.spacing = 12
        stackView.distribution = .fillEqually
        
    
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
       
    }

}

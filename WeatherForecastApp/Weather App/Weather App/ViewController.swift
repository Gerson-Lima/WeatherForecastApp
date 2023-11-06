//
//  ViewController.swift
//  Weather App
//
//  Created by Gerson Lima on 05/11/23.
//

import UIKit

class ViewController: UIViewController {

    private lazy var backgroundView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var headerView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        return view
    }()
    
    private lazy var cityLabel: UILabel = {
        let label = UILabel(frame: .zero) // Por padrão o frame já inizia em zero, portanto, o .zero é opcional
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.text = "Pau dos Ferros"
        label.textAlignment = .center
        label.textColor = UIColor(named: "primaryColor")
        return label
    }()
    
    private lazy var temperatureLabel: UILabel = {
        let label = UILabel(frame: .zero) // Por padrão o frame já inizia em zero, portanto, o .zero é opcional
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 70, weight: .bold)
        label.text = "25ºC"
        label.textAlignment = .left
        label.textColor = UIColor(named: "primaryColor")
        return label
    }()
    
    private lazy var weatherIcon: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "sunIcon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewDidAppear (_ animated: Bool) {
        super.viewDidAppear (animated)
    }
    
    override func viewWillAppear (_ animated: Bool) {
        super.viewWillAppear (animated)
    }
    
    override func viewWillDisappear (_ animated: Bool) {
        super.viewWillDisappear (animated)
    }
    
    override func viewDidDisappear (_ animated: Bool) {
        super.viewDidDisappear (animated)
    }
    
    private func setupView() {
        view.backgroundColor = .red
        
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        view.addSubview(backgroundView)
        view.addSubview(headerView)
        headerView.addSubview(cityLabel)
        headerView.addSubview(temperatureLabel)
        headerView.addSubview(weatherIcon)
    }
    
    private func setConstraints () {
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            headerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            headerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            headerView.heightAnchor.constraint(equalToConstant: 169)
        ])
        
        NSLayoutConstraint.activate([
            cityLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 15),
            cityLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 15),
            cityLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -15),
            cityLabel.heightAnchor.constraint(equalToConstant: 20),
            temperatureLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 20),
            temperatureLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 30),
            weatherIcon.heightAnchor.constraint(equalToConstant: 86),
            weatherIcon.widthAnchor.constraint(equalToConstant: 86),
            weatherIcon.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -30),
            weatherIcon.centerYAnchor.constraint(equalTo: temperatureLabel.centerYAnchor),
            weatherIcon.leadingAnchor.constraint(equalTo: temperatureLabel.trailingAnchor, constant: 15)
            
        ])
        
    }

}


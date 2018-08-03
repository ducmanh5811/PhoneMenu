//
//  ViewController.swift
//  Weather
//
//  Created by Tinh Vu on 8/3/18.
//  Copyright © 2018 Tinh Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var weather = [Weather]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let day = Weather(day: "Monday", photo: "sunny", temper: "35   22")
        let day2 = Weather(day: "Tuesday", photo: "cloudy", temper: "30   23")
        let day3 = Weather(day: "Wednesday", photo: "rain", temper: "24   20")
        let day4 = Weather(day: "Thursday", photo: "snow", temper: "1   9")
        let day5 = Weather(day: "Friday", photo: "thunder", temper: "22   25")
        weather.append(day)
        weather.append(day2)
        weather.append(day3)
        weather.append(day4)
        weather.append(day5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableViewCell", for: indexPath) as! DetailTableViewCell
        cell.dayLabel.text = weather[indexPath.row].day
        cell.typeWeatherImg.image = UIImage(named: weather[indexPath.row].photo)
        cell.temperatureLabel.text = weather[indexPath.row].temper
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weather.count
    }
}

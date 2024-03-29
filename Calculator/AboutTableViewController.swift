//
//  AboutTableViewController.swift
//  Calculator
//
//  Created by Cebu Mobile Team on 7/22/20.
//  Copyright © 2020 Cebu Mobile Team. All rights reserved.
//

import UIKit

class AboutTableViewController: UITableViewController {
    
    //MARK: Properties
     //var abouts = [About]()
    var aboutCell = [AboutCell]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadAboutData()
       
    }

    // MARK: - Table view data source
    
    private func loadAboutData(){
        
        let appName = AboutCell(title: "App Name:", details:"Calculator")
        
        let appVersion = AboutCell(title: "Version:", details:"1.0")
        
        aboutCell += [appName, appVersion]
        
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return aboutCell.count
    }
    
    
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

         let cellIdentifier = "AboutTableViewCell"
         
         guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? AboutTableViewCell  else {
             fatalError("The dequeued cell is not an instance of AboutTableViewCell.")
        }
         
        let about = aboutCell[indexPath.row]
        cell.titleLabel.text = about.title
        cell.detailsLabel.text = about.details
        
         
         return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "COPYRIGHT: 2020 COVID-19"
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

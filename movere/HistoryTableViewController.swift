//
//  HistoryTableViewController.swift
//  movere
//
//  Created by Scholar on 8/3/22.
//

import UIKit

class HistoryTableViewController: UITableViewController {

    
    var historyLogs : [HistoryLog] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        historyLogs = createHistoryLogs()
    }
    
    
    func createHistoryLogs() -> [HistoryLog] {
        let first = HistoryLog()
        first.time = "1 hour"
        first.description = "A run"
        first.distance = 0.5
        
        let second = HistoryLog()
        second.time = "2 hours"
        second.description = "A run"
        second.distance = 1
        
        let third = HistoryLog()
        third.time = "3 hours"
        third.description = "A run"
        third.distance = 2
        
        let fourth = HistoryLog()
        fourth.time = "4 hours"
        fourth.description = "A run"
        fourth.distance = 1
        
        let fifth = HistoryLog()
        fifth.time = "5 hours"
        fifth.description = "A run"
        fifth.distance = 3
        
        let sixth = HistoryLog()
        sixth.time = "6 hours"
        sixth.description = "A run"
        sixth.distance = 2
        
        let seventh = HistoryLog()
        seventh.time = "7 hours"
        seventh.description = "A run"
        seventh.distance = 1
        
        
        return [first, second, third, fourth, fifth, sixth, seventh]
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return historyLogs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        
        let historyLog = historyLogs[indexPath.row]
        
        cell.textLabel?.text = "\(historyLog.description) lasted \(historyLog.time). You ran \(historyLog.distance) miles."

        return cell
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

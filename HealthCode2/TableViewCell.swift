//
//  TableViewCell.swift
//  HealthCode2
//
//  Created by Nicole Mellert on 7/12/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var Label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell

        // Configure YourCustomCell using the outlets that you've defined.

        return cell
    }

}

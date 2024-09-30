//
//  TableViewControllerNuevo.swift
//  ValladolidableViewController_Lab6
//
//  Created by Mac05 on 30/09/24.
//

import UIKit

class TableViewCellNuevo: UITableViewCell{
    
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var imagenNumeros: UIImageView!
}

class TableViewControllerNuevo: UITableViewController {

    var arregloNumeros: [String] = ["1", "2", "3", "4"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arregloNumeros.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCellNuevo
        
        // Configuramos el texto de la celda
        cell.etiqueta?.text = arregloNumeros[indexPath.row]
        
        // Configuramos la imagen correspondiente según el texto de la celda
        switch cell.etiqueta?.text {
        case "1":
            cell.imagenNumeros?.image = UIImage(named: "ICONOS/1.png")
            cell.detailTextLabel?.text = "Celda numero 1"
        case "2":
            cell.imagenNumeros?.image = UIImage(named: "ICONOS/2.png")
            cell.detailTextLabel?.text = "Celda numero 2"
        case "3":
            cell.imagenNumeros?.image = UIImage(named: "ICONOS/3.png")
            cell.detailTextLabel?.text = "Celda numero 3"
        case "4":
            cell.imagenNumeros?.image = UIImage(named: "ICONOS/4.png")
            cell.detailTextLabel?.text = "Celda numero 4"
        default:
            print("No hay más elementos para llenar imagen")
            cell.detailTextLabel?.text = "Celda fuera de rango"
        }

        return cell
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            // tableView.deleteRows(at: [indexPath], with: .fade)
            arregloNumeros.remove(at: indexPath.row)
            tableView.reloadData()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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

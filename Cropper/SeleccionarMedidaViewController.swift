//
//  SeleccionarMedidaViewController.swift
//  Cropper
//
//  Created by Kiron on 9/17/18.
//  Copyright © 2018 Manuela Garcia. All rights reserved.
//

import UIKit

class SeleccionarMedidaViewController: UIViewController {
    
    var medida = 0
    var tipoMarcador = 0
    var tipoMarcador2 = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController

        vc.medida = self.medida
        vc.tipoMarcador = self.tipoMarcador
        vc.tipoMarcador2 = self.tipoMarcador2
    }
    
    @IBAction func marcador1(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: nil,
                                            message: nil,
                                            preferredStyle: .actionSheet)
        
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 50 vieja", style: .default) { (action) in
            self.tipoMarcador = 1
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 50 nueva", style: .default) { (action) in
            self.tipoMarcador = 2
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 100 vieja", style: .default) { (action) in
            self.tipoMarcador = 3
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 100 nueva", style: .default) { (action) in
            self.tipoMarcador = 4
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 200 vieja", style: .default) { (action) in
            self.tipoMarcador = 5
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 200 nueva", style: .default) { (action) in
            self.tipoMarcador = 6
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 500 vieja", style: .default) { (action) in
            self.tipoMarcador = 7
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 500 nueva", style: .default) { (action) in
            self.tipoMarcador = 8
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 1000", style: .default) { (action) in
            self.tipoMarcador = 9
        })
        
        actionSheet.addAction(UIAlertAction(title: "Tapa de CocaCola", style: .default) { (action) in
            self.tipoMarcador = 10
        })
        
        actionSheet.addAction(UIAlertAction(title: "Cancelar", style: .cancel))
        present(actionSheet, animated: true, completion: nil)
    }
    
    
    @IBAction func marcador2(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: nil,
                                            message: nil,
                                            preferredStyle: .actionSheet)
        
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 50 vieja", style: .default) { (action) in
            self.tipoMarcador2 = 1
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 50 nueva", style: .default) { (action) in
            self.tipoMarcador2 = 2
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 100 vieja", style: .default) { (action) in
            self.tipoMarcador2 = 3
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 100 nueva", style: .default) { (action) in
            self.tipoMarcador2 = 4
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 200 vieja", style: .default) { (action) in
            self.tipoMarcador2 = 5
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 200 nueva", style: .default) { (action) in
            self.tipoMarcador2 = 6
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 500 vieja", style: .default) { (action) in
            self.tipoMarcador2 = 7
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 500 nueva", style: .default) { (action) in
            self.tipoMarcador2 = 8
        })
        
        actionSheet.addAction(UIAlertAction(title: "Moneda de 1000", style: .default) { (action) in
            self.tipoMarcador2 = 9
        })
        
        actionSheet.addAction(UIAlertAction(title: "Tapa de CocaCola", style: .default) { (action) in
            self.tipoMarcador2 = 10
        })
        
        actionSheet.addAction(UIAlertAction(title: "Cancelar", style: .cancel))
        present(actionSheet, animated: true, completion: nil)
    }
    
    
    @IBAction func medidaHorizontal(_ sender: UIButton) {
        // Si la medida es horizontal
        self.medida = 1
        self.performSegue(withIdentifier: "showMedida", sender: self)
    }
    
    @IBAction func medidaVertical(_ sender: UIButton) {
        // Si la medida es vertical
        self.medida = 2
        self.performSegue(withIdentifier: "showMedida", sender: self)
    }
}

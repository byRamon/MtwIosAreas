//
//  AreaCirculo.swift
//  Practica200222AreasApp
//
//  Created by ByRamon on 26/02/20.
//  Copyright © 2020 ByRamon. All rights reserved.
//

import SwiftUI

struct AreaCirculo: View {
    @State private var strRadio = ""
    var area : Double{
        let radio = Double(strRadio) ?? 0
        let area = radio * radio * 3.1415
        return area
    }
    var body: some View {
        Form{
            HStack {
                Spacer()
                Image("AreaCirculo")
                Spacer()
            }
            Section(header: Text("Datos de entrada")){
                Text("Radio")
                TextField("Escriba el radio", text: $strRadio).keyboardType(.decimalPad)
            }
            Section(header: Text("Resultado")){
                Text("Área del círculo: \(area, specifier: "%.2f")" )
                .font(.title)
            }
        }.navigationBarTitle("Área del círculo")
    }
}

struct AreaCirculo_Previews: PreviewProvider {
    static var previews: some View {
        AreaCirculo()
    }
}

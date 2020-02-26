//
//  AreaTriangulo.swift
//  Practica200222AreasApp
//
//  Created by ByRamon on 22/02/20.
//  Copyright © 2020 ByRamon. All rights reserved.
//

import SwiftUI

struct AreaTriangulo: View {
    @State private var strAlto = ""
    @State private var strAncho = ""
    var area : Double{
        let alto = Double(strAlto) ?? 0
        let ancho = Double(strAncho) ?? 0
        let area = (alto * ancho) / 2
        return area
    }
    var body: some View {
        Form{
            HStack {
                Spacer()
                Image("AreaTriangulo")
                Spacer()
            }
            Section(header: Text("Datos de entrada")){
                Text("Alto")
                TextField("Escriba el alto", text: $strAlto).keyboardType(.decimalPad)
                Text("Ancho")
                TextField("Escriba el ancho", text: $strAncho).keyboardType(.decimalPad)
            }
            Section(header: Text("Resultado")){
                Text("Área del triangulo: \(area, specifier: "%.2f")" )
                    .font(.title)
            }
        }.navigationBarTitle("Área del triangulo")
    }
}

struct AreaTriangulo_Previews: PreviewProvider {
    static var previews: some View {
        AreaTriangulo()
    }
}

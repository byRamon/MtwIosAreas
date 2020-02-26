//
//  AreaCuadrado.swift
//  Practica200222AreasApp
//
//  Created by ByRamon on 26/02/20.
//  Copyright © 2020 ByRamon. All rights reserved.
//

import SwiftUI

struct AreaCuadrado: View {
    @State private var strA = ""
    @State private var strB = ""
    var area : Double{
        let ladoA = Double(strA) ?? 0
        let ladoB = Double(strB) ?? 0
        let area = ladoA * ladoB
        return area
    }
    var body: some View {
        Form{
            HStack {
                Spacer()
                Image("AreaRectangulo")
                Spacer()
            }
            Section(header: Text("Datos de entrada")){
                Text("Lado A")
                TextField("Escriba el lado A", text: $strA).keyboardType(.decimalPad)
                Text("Lado B")
                TextField("Escriba el lado B", text: $strB).keyboardType(.decimalPad)
            }
            Section(header: Text("Resultado")){
                Text("Área del rectangulo: \(area, specifier: "%.2f")" )
                .font(.title)
            }
        }.navigationBarTitle("Área del Rectangulo")
    }
}

struct AreaCuadrado_Previews: PreviewProvider {
    static var previews: some View {
        AreaCuadrado()
    }
}

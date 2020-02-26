//
//  ContentView.swift
//  Practica200222AreasApp
//
//  Created by ByRamon on 22/02/20.
//  Copyright © 2020 ByRamon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink (destination: AreaTriangulo()){
                    Image("IconAreaTriangulo")
                    Text("Area del Triangulo")
                }
                NavigationLink(destination: AreaCirculo()){
                    Image("IconAreaCirculo")
                    Text("Area del Circulo")
                }
                NavigationLink(destination: AreaCuadrado()){
                    Image("IconAreaRectangulo")
                    Text("Area del Rectangulo")
                }
            }.navigationBarTitle("Areas App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

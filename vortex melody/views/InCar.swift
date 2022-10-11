//
//  InCar.swift
//  vortex melody
//
//  Created by Samy Mehdid on 9/10/2022.
//

import SwiftUI
import CTPanoramaView
import SceneKit

struct PanoramaView: UIViewRepresentable {
    @State var car: Car?
    var panoramaView = CTPanoramaView()
    
    init(car: Car) {
        self.car = car
        let image = UIImage(named: "M5-int")
        panoramaView.image = image
        panoramaView.panoramaType = .spherical
        panoramaView.controlMethod = .both
    }
    func makeUIView(context: Context) -> some UIView {
        return panoramaView
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

struct InCarView: View {
    @State var car: Car
    
    var body: some View {
        PanoramaView(car: car)
            .ignoresSafeArea()
    }
}

struct InCarView_Previews: PreviewProvider {
    static var previews: some View {
        InCarView(car: .M5)
    }
}

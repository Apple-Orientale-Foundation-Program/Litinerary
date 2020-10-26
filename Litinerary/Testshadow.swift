//
//  Testshadow.swift
//  Litinerary
//
//  Created by Sonia Di Nicoli on 26/10/2020.
//

import SwiftUI

struct Testshadow: View {
    var body: some View {
        
        var view = ContentView()

        view.frame = CGRect(x: 0, y: 0, width: 380, height: 180)

        view.backgroundColor = .white

        var shadows = UIView()

        shadows.frame = view.frame

        shadows.clipsToBounds = false

        view.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 50)

        let layer0 = CALayer()

        layer0.shadowPath = shadowPath0.cgPath

        layer0.shadowColor = UIColor(red: 0.859, green: 0.306, blue: 0.306, alpha: 0.2).cgColor

        layer0.shadowOpacity = 1

        layer0.shadowRadius = 0

        layer0.shadowOffset = CGSize(width: 0, height: 4)

        layer0.bounds = shadows.bounds

        layer0.position = shadows.center

        shadows.layer.addSublayer(layer0)

        var shapes = UIView()

        shapes.frame = view.frame

        shapes.clipsToBounds = true

        view.addSubview(shapes)

        let layer1 = CALayer()

        layer1.backgroundColor = UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor

        layer1.bounds = shapes.bounds

        layer1.position = shapes.center

        shapes.layer.addSublayer(layer1)

        shapes.layer.cornerRadius = 50
    }
}

struct Testshadow_Previews: PreviewProvider {
    static var previews: some View {
        Testshadow()
    }
}

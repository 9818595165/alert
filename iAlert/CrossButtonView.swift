//
//  CrossButtonView.swift
//  iAlert
//
//  Created by Prabhat Pankaj on 24/01/23.
//

import SwiftUI

struct CrossButtonView: View {
    var backGroundImage: some View {
        Image(uiImage: UIImage(named: "cancel_background") ?? UIImage())
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
    
    var cancelImage: some View {
        Image(uiImage: UIImage(named: "cross_white") ?? UIImage())
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
    
    var body: some View {
        ZStack {
            backGroundImage
            cancelImage
        }
    }
}

struct CrossButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CrossButtonView()
    }
}

//
//  ContentView.swift
//  iAlert
//
//  Created by Prabhat Pankaj on 09/09/22.
//
import SwiftUI
import UIKit

struct ContentView: View {
    @State var showDatePicker = false
    @State var textfieldText: String = ""
    @State private var currentDate = Date()

    var body: some View {
        List {
                 HStack {
                     TextField("Date of birth", text: $textfieldText) { value in
                         self.showDatePicker = value
                     }
                     if self.showDatePicker {
                         DatePicker(selection:$currentDate, in:...Date().addingTimeInterval(-24*60*60) ,displayedComponents:.date){
                         }
                         .frame(width: 160, alignment: .center)
                         .foregroundColor(Color(hex: "000000"))
                         .labelsHidden()
                         .colorMultiply(Color(hex: "194CB2"))
                         .padding(4)
                         .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "707070"), lineWidth: 1))
                    
                     }
                 }
             }
             .padding(.top)
         }
    }


extension UIImage {
    
    func mergeImage(with secondImage: UIImage, point: CGPoint? = nil) -> UIImage {

        let firstImage = self
        let newImageWidth = max(firstImage.size.width, secondImage.size.width)
        let newImageHeight = max(firstImage.size.height, secondImage.size.height)
        let newImageSize = CGSize(width: newImageWidth, height: newImageHeight)

        UIGraphicsBeginImageContextWithOptions(newImageSize, false, 1.0)

        let firstImagePoint = CGPoint(x: round((newImageSize.width - firstImage.size.width) / 2),
                                      y: round((newImageSize.height - firstImage.size.height) / 2))

        let secondImagePoint = point ?? CGPoint(x: round((newImageSize.width - secondImage.size.width) / 2),
                                                y: round((newImageSize.height - secondImage.size.height) / 2))

        firstImage.draw(at: firstImagePoint)
        secondImage.draw(at: secondImagePoint)

        let image = UIGraphicsGetImageFromCurrentImageContext()

        UIGraphicsEndImageContext()

        return image ?? self
    }
}

struct FullScreenView : View {
    var body: some View {
        Text("Full screen")
    }
}



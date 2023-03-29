//
//  AlertView.swift
//  iAlert
//
//  Created by Prabhat Pankaj on 14/09/22.
//

import SwiftUI

struct CustomAlertView: View {
    @Binding var showAlert: Bool
    @Binding  var username: String
    @State var message:String
    var body : some View {
        ZStack {
                VStack(spacing: 10) {
                    Text(message).multilineTextAlignment(.center).padding()
                    TextField("Username", text: $username)
                    Divider()
                    HStack{
                        Button(action: {
                        }) {
                            Text("Retry")
                                .foregroundColor(.blue)
                        }
                            .frame(width: 100, height: 40)
                            .cornerRadius(20.0)
                        if $username.wrappedValue.count>0 {
                            Button(action: {
                            }) {
                                Text("Continue")
                                    .foregroundColor(.blue)
                            }
                                .frame(width: 100, height: 40)
                                .cornerRadius(20.0)
                        }
                    }
                    
                    Spacer()
                }
        }
        .padding(EdgeInsets(top: 40, leading: 20, bottom: 30, trailing: 20))
        .frame(width: 300, height: 200)
        .background(Color.white)
        .cornerRadius(10.0)
        .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.13), radius: 10.0)
        
    }
    
}



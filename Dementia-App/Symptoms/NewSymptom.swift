//
//  NewSymptom.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/16/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct NewSymptom: View {

    @Environment(\.presentationMode) var presentation
    @State var newSymptom: String = ""
    @State var addSymptom: Bool = false

    var body: some View {

        VStack {

            HStack {
                Spacer()

                Button(action: { self.presentation.wrappedValue.dismiss() }) {
                    Text("Cancel")
                }
            }

            HStack {
                Text("New Symptom")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading, UIScreen.main.bounds.width*0.03)
                    .padding(.top)
                Spacer()
            }

            HStack {
                TextField("Enter new symptom name", text: $newSymptom)
                    .textFieldStyle(CustomTextFieldStyle())
                    .frame(width: UIScreen.main.bounds.width*0.7, height: UIScreen.main.bounds.height*0.02)

                Button(action: { self.addSymptom = true }) {
                    HStack(alignment: .center) {
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width*0.05, height: UIScreen.main.bounds.height*0.03)
                    }
                    .foregroundColor(Color.white)
                    .frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.height*0.045)
                    .background(Color(#colorLiteral(red: 0, green: 0.5492870212, blue: 1, alpha: 1)))
                    .cornerRadius(8)
                }
            }

            Spacer()

        }.padding()
        .navigationBarItems(trailing:
            Button(action: { self.presentation.wrappedValue.dismiss() }) {
                Text("Submit")
        })
    }
}

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<_Label>) -> some View {
        configuration
            .padding(.leading, UIScreen.main.bounds.width*0.03)
            .padding(.top, UIScreen.main.bounds.width*0.015)
            .padding(.bottom, UIScreen.main.bounds.width*0.015)
            .background(Color(#colorLiteral(red: 0.9339778938, green: 0.9339778938, blue: 0.9339778938, alpha: 1)))
            .cornerRadius(8)
    }
}

struct NewSymptom_Previews: PreviewProvider {
    static var previews: some View {
        NewSymptom()
    }
}

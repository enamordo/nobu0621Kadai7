//
//  SubtractionView.swift
//  Kadai7
//
//  Created by nobu0621 on 2024/08/27.
//

import SwiftUI

struct SubtractionView: View {
    @FocusState private var isInputActive: Bool
    @State private var inputNumber1 = ""
    @State private var inputNumber2 = ""
    @State private var result = /*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/

    var body: some View {
        ZStack {
            Color.green

            VStack(spacing: 20) {
                
                TextField("", text: $inputNumber1)
                    .roundedTextFieldStyle()
                    .focused($isInputActive)
                TextField("", text: $inputNumber2)
                    .roundedTextFieldStyle()
                    .focused($isInputActive)
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    isInputActive = false
                    let number1 = Int(inputNumber1.trimmingCharacters(in: .whitespaces)) ?? 0
                    let number2 = Int(inputNumber2.trimmingCharacters(in: .whitespaces)) ?? 0
                    result = String(number1 - number2)
                }
                Label(result, systemImage: "")
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    SubtractionView()
}

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
    @State private var result = "Label"

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
                Button("Button") {
                    isInputActive = false
                    let number1 = Int(inputNumber1.trimmingCharacters(in: .whitespaces)) ?? 0
                    let number2 = Int(inputNumber2.trimmingCharacters(in: .whitespaces)) ?? 0
                    result = String(number1 - number2)
                }
                Text(result)
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    SubtractionView()
}

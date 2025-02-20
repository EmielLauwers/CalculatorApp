import SwiftUI

enum CalcButton: String {
    case een = "1"
    case twee = "2"
    case drie = "3"
    case vier = "4"
    case vijf = "5"
    case zes = "6"
    case zeven = "7"
    case acht = "8"
    case negen = "9"
    case nul = "0"
    case add = "+"
    case verminder = "-"
    case deel = "÷"
    case maal = "×"
    case gelijk = "="
    case clear = "AC"
    case decimal = ","
    case procent = "%"
    case negatief = "+/−"
    case calculator = "calculator"
    
    var buttonColor: Color {
        switch self {
        case .clear, .negatief, .procent:
            return Color.gray
        case .add, .verminder, .deel, .maal, .gelijk:
            return Color.orange
        default:
            return Color(.darkGray)
        }
    }
}

struct ContentView: View {
    
    let buttons: [[CalcButton]] = [
        [.clear, .negatief, .procent, .deel],
        [.zeven, .acht, .negen, .maal],
        [.vier, .vijf, .zes, .verminder],
        [.een, .twee, .drie, .add],
        [.calculator, .nul, .decimal, .gelijk]
    ]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack(spacing: 10) {
                Spacer()
                HStack {
                    Spacer()
                    Text("0")
                        .bold()
                        .font(.system(size: 80))
                        .foregroundColor(.white)
                        .padding()
                }
                
                ForEach(buttons, id: \.[0].self) { row in
                    HStack(spacing: 10) {
                        ForEach(row, id: \.self) { item in
                            Button(action: {}, label: {
                                if item == .calculator {
                                    Image(systemName: "apps.iphone")
                                        .font(.system(size: 32))
                                        .frame(width: 80, height: 80)
                                        .background(Color.gray)
                                        .foregroundColor(.white)
                                        .cornerRadius(40)
                                } else {
                                    Text(item.rawValue)
                                        .font(.system(size: 32))
                                        .frame(width: item == .nul ? 80 : 80, height: 80)
                                        .background(item.buttonColor)
                                        .foregroundColor(item == .clear || item == .negatief || item == .procent ? .black : .white)
                                        .cornerRadius(40)
                                }
                            })
                        }
                    }
                }
            }
            .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ContentView()
}

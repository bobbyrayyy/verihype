import SwiftUI

struct VerifyView: View {    
    var body: some View {

        VStack {
            Image("rfid")
                .resizable()
                .frame(width: 400, height: 400, alignment: .center)
                .padding(.bottom, 10)

            HStack{
                Button(action: {
                    print("Verify button tapped")
                }) {
                    Text("Verify Now")
                }
                .padding()
                .frame(width: 200, height: 50, alignment: .center)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(5)
            }
            Spacer()
        }.background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
        .navigationBarTitle("Verify your item")
         
    }
 }

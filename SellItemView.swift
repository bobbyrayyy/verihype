import SwiftUI

struct SellItemView: View {
    @State var notificationToggle: Bool = false
    @State var locationUsage: Bool = false
    @State var username: String = "Bobby"
    @State var itemname: String = ""
    @State var itemprice: String = ""
    @State var iteminfo: String = ""
    @State var fee: String = "$5"
    @State var selectedCurrency: Int = 0
    @State var currencyArray: [String] = ["$ US Dollar", "Bitcoin", "Ethereum"]
    
    @State var selectedPaymentMethod: Int = 1
    @State var paymentMethodArray: [String] = ["Bitcoin", "Ethereum"]
    
    var body: some View {
        GeometryReader { g in
            VStack {
                Image("jordans")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .background(Color.yellow)
                    .padding(.bottom, 10)
                
                Button(action: {
                    print("Button tapped")

                }) {
                    Text("Upload another picture")
                }
                    
                Form {
                    Section(header: Text("Sale Price")) {
                        TextField(
                            "Item Name",
                            text: $itemname
                        )
                        .disableAutocorrection(true)
                        
                        TextField(
                            "Item Price",
                            text: $itemprice
                        )
                        .disableAutocorrection(true)
                        
                        Picker(selection: self.$selectedCurrency, label: Text("Currency")) {
                                         ForEach(0 ..< self.currencyArray.count) {
                                                  Text(self.currencyArray[$0]).tag($0)
                                            }
                        }
                    }
                    
                    Section(header: Text("Item Information")) {
                        TextField(
                            "Item Description",
                            text: $iteminfo
                        )
                    }
                }
                .padding(.top, 10)
                .padding(.bottom, 10)
                
                HStack{
                    Button(action: {
                        print("Sell Item button tapped")
                    }) {
                        Text("Sell Item")
                    }
                    .padding()
                    .frame(width: 200, height: 50, alignment: .center)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(5)
                }
                
                Spacer()
            }.background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
            .navigationBarTitle("Sell Your Item")
         }
    }
 }

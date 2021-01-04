//
//  page2.swift
//  project
//
//  Created by alqattan on 02/01/2021.
//

import SwiftUI

struct page2: View {
    @State var name : String = ""
    @State var phone : String = ""
    @State var hours = 0
    @State var bic = 0
    @State var total = 0
    var d:data
    var type : String
    var body: some View {
        VStack{
            Image(type)
            
            TextField("الاسم", text:$name)
                .padding()
            
            TextField("رقم الهاتف ", text:$phone )
                .padding()
            HStack{
                
                
                Stepper("  \(hours) عدد الساعات ", value: $hours,in:0...50)
                    .padding()
                
            }
            Spacer()
            
            HStack{
                
                Stepper(" \(bic) عدد الدراجات ", value:$bic, in:0...50)
                    .padding()
            }
            
            
            VStack {
                
                let t = Double(Double(hours) * d.price * Double(bic))
                Spacer()
               Text("\(t) K.D.")
                    .padding()
                Text("المبلغ الكلي")
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                    .padding(.leading)
                Spacer()
                
                
               
                
                if Int(t)>0
                {
                    NavigationLink(
                        destination: bill(d: details(name: name, phone: phone, hours: hours, bic: bic , total:t)),
                        label: {
                            Text("اضغط للمتابعة")
                                .font(.largeTitle)
                                .frame(width: 250, height: 100, alignment:.center)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(8.0)
                                .padding()
                        })
                    
                    
                }
                
            }
            
            
        }
}
        
struct page2_Previews: PreviewProvider {
    static var previews: some View {
        page2( d:data(number: 1, type: "", price: 0.0), type: "13")
            .previewDevice("iPhone 12")
    }
}
}

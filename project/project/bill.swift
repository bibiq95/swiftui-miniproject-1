//
//  bill.swift
//  project
//
//  Created by alqattan on 03/01/2021.
//

import SwiftUI

struct bill: View {
@State var buttoncolor: Color = .blue
@State var buttontxt:String = "تم الدفع"
   var d : details
    var body: some View {
        VStack{
            Spacer()
            HStack{
                

            Text("الاسم")
                Spacer()
                Text("\(d.name)")

            }
            
          
            
            HStack{
            Text("الساعات")
                
                Spacer()
                Text("\(d.hours)")
                
            }
            
            HStack{


            Text("الهاتف")
                Spacer()
                Text ("\(d.phone)")
                    

            }
           
            HStack{


            Text("المبلغ")
                Spacer()
                Text("\(d.total)")
            }
           Spacer()
            
          
            Button(action: {
                self.buttontxt="تم الدفع"
                self.buttoncolor=Color.green
            }, label: {
                Text(buttontxt)
                    .foregroundColor(.white)
                .font(.largeTitle)
               .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.green)
                .cornerRadius(8.0)
                .padding()
            })

            .navigationTitle("الفاتوره")
        }
        .padding()
    }
}

struct bill_Previews: PreviewProvider {
    static var previews: some View {
        bill( buttontxt:"", d:details(name:"", phone: "", hours: 0, bic: 0, total: 0.0) )
    }
}

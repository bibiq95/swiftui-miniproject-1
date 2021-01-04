//
//  ContentView.swift
//  project
//
//  Created by alqattan on 02/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{

        VStack{
           Spacer()

            Text("مرحباً بك ! يمكنك اختيار الدراجة المناسبة لك من القائمة و اكمل بياناتك للحجز")
                .padding()
        
                List (Data){ d in
                    
                    
                            NavigationLink(
                                destination: page2(d: data(number:d.number, type:d.type, price:d.price)),
                                label: {
                                    rent(d: d)
                        
                    }
                   )}
                    }
        .navigationBarTitle("تأجير الدراجات")

           
            }

            
        }
        
        
        
                
            
        



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}

struct rent: View {

  var d :data
    var body: some View {
        
        
        
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            
            Text("\(d.number)")
                .font(.system(size: 30))
            .padding()
                .background(Color.blue)
                .clipShape(Circle())
                .frame(width:100 , height:100)
            Spacer()
            Spacer()
            VStack (alignment: .leading)
            {
                Image(d.type)
                    .resizable()
                    .scaledToFit()
                    .frame(width:40, height:40)
                    .padding()
            }
            Spacer()
            Spacer()
            Spacer()
        
  
        }
        
      
     
}
}
}

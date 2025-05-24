//
//  ContentView.swift
//  Groceryapp
//
//  Created by pc on 24/05/25.
//

import SwiftUI

struct ContentView: View {
    @State var changeScreen = false
    var body: some View {
       
        
        NavigationStack{
            VStack(spacing:50){
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width:300, height:300)
                Text("We deliver your grocery at doorstep")
                    .font(.system(size:36,weight:.bold, design:.default))
                    .multilineTextAlignment(.center)
                Text("We deliver the best grocery and fruits,order from Grocerr App")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                Button(){
                    changeScreen = true
                }label:{
                    ZStack{
                        RoundedRectangle(cornerRadius:50)
                        Text("Get Started")
                            .foregroundColor(.white)
                            .bold()
                    }
                    .frame(width:300,height:60)
                    .foregroundColor(.purple)
                }
                .navigationDestination(isPresented: $changeScreen){
                    Shop()
                }
                
                
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}

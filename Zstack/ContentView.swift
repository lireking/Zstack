//
//  ContentView.swift
//  Zstack
//
//  Created by OakHost Customer on 10/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            //Background color
            Color.black
                .ignoresSafeArea(.all)
            
            VStack {
                
                Text("Choose your subscription")
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.white)
                            .fontWeight(.black)
                HStack {
                    SubscriptionView(title: "Basic", price: "9", fontColor: .black, bgColor: .white)
                        
                    SubscriptionView(title: "Gold", price: "49", fontColor: .black, bgColor: .yellow)
                                                        
                } //HStack
                
                SubscriptionView(title: "Titanium", price: "99", fontColor: .white, bgColor: .gray)
                
                SubscriptionButton(text: "Subscribe", color: .blue, topPadding: 40, action: {
                                    //Execute subscribe code
                                })
                                
                SubscriptionButton(text: "Maybe next time", color: .red, topPadding: 10, action: {
                                    //Execute exit code
                                })
                            
            } //VStack
            
        } //ZStack
        
    } //body
    
} //ContentView


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SubscriptionView: View {
    
    var title: String
    var price: String
    var fontColor: Color
    var bgColor: Color
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(.title, design: .rounded))
                .foregroundColor(.black)
                .fontWeight(.black)
            Text("$\(price)")
                .font(.system(.title, design: .rounded))
                .foregroundColor(.black)
            Text("per month")
                .font(.headline)
                .foregroundColor(.black)
        } //VStack
        .frame(maxWidth: .infinity, minHeight: 150)
        .padding(30)
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct SubscriptionButton: View {
    
    var text: String
    var color: Color
    var topPadding: CGFloat
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .padding()
                .font(.title)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 75)
                .background(color)
                .cornerRadius(30)
                .shadow(radius: 40)
        }
        .padding(.top, topPadding)
        .padding(.horizontal)
    }
}

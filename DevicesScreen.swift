//
//  DevicesScreen.swift
//  TelaCinco
//
//  Created by Turma01-7 on 07/02/24.
//

import SwiftUI

struct DevicesScreen: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("principal")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Text("Dispositivos")
                            .foregroundColor(.white)
                            .font(.system(size: 30, design: .rounded))
                            .bold()
                            .frame(width: 200, height: 150)
                            .frame(alignment: .topLeading)
                        Spacer().frame(width: 130)
                    }
                    Spacer()
                    
                    ScrollView{
                        //inserir ForEch
                        ForEach(viewModel.list, id: \.hashValue){ index in
                            
                            VStack(spacing: 50){
                                
                                HStack{
                                    
                                    //substituir para tela
                                    NavigationLink(destination: testscreen(x: index)){
                                        
                                        Text("")
                                            .frame(width: 20, height: 50)
                                        
                                        // insetir simbolo do eletrodomestico
                                        Text(index.nome)
                                            .frame(maxWidth: .infinity , alignment: .leading)
                                        //inserir variavel nome do eletrodomestico
                                        
                                        Image(systemName: "ellipsis")
                                            .rotationEffect(.degrees(90))
                                        Spacer().frame(width: 30)
                                    }.background(Color("BackgroundBlue"))
                                    
                                    
                                        .frame(width: 330)
                                        .cornerRadius(15)
                                        .foregroundColor(Color("Icons"))
                                    
                                }
                                
                            }
                            
                            
                        }
                        
                        
                    }
                    
                    
                    VStack{
                        HStack{
                            Spacer()
                            // substituir test pela tela de cadastro
                            NavigationLink(destination: RegisterScreen()){
                                Image(systemName: "plus.square")
                                    .resizable()
                                    .foregroundColor(Color("Icons"))
                                    .frame(width: 50, height: 50 )
                                    .background(Color("BackgroundBlue"))
                                    .cornerRadius(10)
                                
                            }
                            
                            
                            Spacer().frame(width: 20)
                        }
                        
                    }.offset(x: 4, y: 0)
                    
                    Spacer()
                    
                }
            }
            .onAppear(){
                viewModel.fetch()
            }
            
        }
    }
    
}

struct DevicesScreen_Previews: PreviewProvider {
    static var previews: some View {
        DevicesScreen()
    }
}


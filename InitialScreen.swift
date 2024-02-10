//
//  InitialScreen.swift
//  ProjetoFinalApp
//
//  Created by Turma01-7 on 07/02/24.
//

import SwiftUI
import Charts


struct InitialScreen: View {
    
    @State var recebeCusto : Double = 0.0
    @State var recebeConsumo : Double = 0.0
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BackgroundBlue").ignoresSafeArea()
                
                Text("Página Inicial")
                    .fontWeight(.semibold).bold()
                    .font(.system(size: 29))
                    .foregroundColor(.white)
                    .position(x: 115, y: 80)
                
                Rectangle().foregroundColor(Color("gray")) //FUNDO CINZA
                    .cornerRadius(35)
                    .frame(height: 600)
                    .position(x:188, y: 420)
                
                ScrollView(.horizontal) { // GRÁFICO
                    HStack {
                        Spacer().frame(width: 180)
                        VStack {
                            Spacer().frame(height: 170)
                            Text("Semana")
                                .frame(alignment: .center)
                            
                            Chart {
                                BarMark(x: .value("Name", "kWh"),
                                        y:.value("Sales", 910))
                                BarMark(x: .value("Name", "Custo"),
                                        y: .value("Sales", 850))
                            }.frame(width: 150, height: 150)
                        }
                        Spacer().frame(width: 90)
                        
                        VStack {
                            Spacer().frame(height: 170)
                            Text("Mês")
                            Chart {
                                BarMark(x: .value("Name", "kWh"),
                                        y:.value("Sales", 916))
                                BarMark(x: .value("Name", "Custo"),
                                        y: .value("Sales", 850))
                            }.frame(width: 150, height: 150)
                        }
                        Spacer().frame(width: 90)
                        VStack {
                            Spacer().frame(height: 170)
                            Text("Ano")
                            Chart {
                                BarMark(x: .value("Name", "kWh"),
                                        y:.value("Sales", 916))
                                BarMark(x: .value("Name", "Custo"),
                                        y: .value("Sales", 850))
                            }.frame(width: 150, height: 150)
                        }
                        Spacer().frame(width: 90)
                        
                    }.position(x:335, y: 150)
                        .font(.system(size: 18))
                        .foregroundColor(Color("BackgroundBlue"))
                        .bold()
                } //FIM DO GRÁFICO
                
                VStack { // CORPO
                    ZStack {   //USO MÉDIO
                        Rectangle().foregroundColor(.white)
                            .frame(width: 300 ,height: 50)
                            .cornerRadius(10)
                            .padding(2)
                        
                        HStack {
                            Spacer().frame(width: 45)
                            Image(systemName: "waveform.path.ecg")
                                .foregroundColor(.white)
                                .background(Color("Icons"))
                                .cornerRadius(5)
                                .font(.system(size: 35))
                            Spacer().frame(width: 10)
                            
                            VStack {
                                Text("Uso Médio")
                                    .font(.system(size: 13))
                                    .opacity(0.3)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("\(recebeConsumo, specifier: "%.2f")") // COLOCAR VARIÁVEL DE USO MÉDIO
                                    .font(.system(size: 20))
                                    .bold()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            Spacer().frame(width: 138)
                        }
                    }
                    // FIM USO MÉDIO
                    
                    
                    ZStack {  //CUSTO MÉDIO
                        Rectangle().foregroundColor(.white)
                            .frame(width: 300 ,height: 50)
                            .cornerRadius(10)
                        
                        HStack {
                            Spacer().frame(width: 45)
                            Image(systemName: "dollarsign")
                                .foregroundColor(.white)
                                .frame(width: 42, height: 40)
                                .background(Color("BackgroundBlue"))
                                .cornerRadius(5)
                                .font(.system(size: 30))
                            Spacer().frame(width: 10)
                            
                            VStack {
                                Text("Custo Médio")
                                    .font(.system(size: 13))
                                    .opacity(0.3)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("\(recebeCusto, specifier: "%.2f")") //COLOCAR VARIÁVEL DE CUSTO MÉDIO
                                    .font(.system(size: 20))
                                    .bold()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            Spacer().frame(width: 140)
                        }
                    }
                    // FIM CUSTO MÉDIO
                    
                    
                    HStack { // USO DO ÚLTIMO MÊS
                        Spacer().frame(width: 38, height:90) // ESPAÇAMENTO DO RETANGULO
                        ZStack {
                            Rectangle().foregroundColor(.white)
                                .frame(width: 150 ,height: 70)
                                .cornerRadius(10)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            HStack {
                                VStack {
                                    Text("Uso do ultimo mês")
                                        .foregroundColor(Color("BackgroundBlue"))
                                        .bold()
                                        .font(.system(size: 13))
                                    
                                    Spacer().frame(height: 13)
                                    
                                    Text("0.00 kWh") //VARIÁVEL DE "GUARDAR" O VALOR DO ÚLTIMO MÊS
                                        .font(.system(size: 14))
                                        .bold()
                                }
                                Spacer().frame(width: 180)
                            }
                        }
                    }
                }.position(x: 185, y:470)
            }
        }.onAppear(){
            recebeCusto = Global.globalCusto
            recebeConsumo = Global.globalConsumo
        }
    }
}

struct InitialScreen_Previews: PreviewProvider {
    static var previews: some View {
        InitialScreen()
    }
}

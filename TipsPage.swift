//
//  TipsPage.swift
//  ProjetoFinalApp
//
//  Created by Turma01-7 on 03/02/24.
//

import SwiftUI

struct TipsPage: View {
    var y : Tips
    var body: some View {
       
        NavigationStack{
        
            ZStack{
                Color("BackgroundBlue")
                    .ignoresSafeArea()
                  
                ScrollView{
       
                    VStack(spacing: 30){
                        HStack{
                            Image(systemName: y.icon)
                                .font(.system(size: 30))
                                .foregroundColor(Color.yellow)
                            
                            Text(y.name)
                                .foregroundColor(.yellow)
                                .font(.system(size: 25))
                            Spacer()
                        }.padding()
                        
                        VStack{
                            VStack(spacing: 15){
                                HStack(spacing: 5){
                                    Text(y.titletip)
                                        .foregroundColor(.yellow)
                                        .bold()
                                        .font(.system(size: 20, design: .serif))
                                    Spacer()
                                }
                                
                                Text(y.textip)
                                    .foregroundColor(.white)
                                    .font(.system(size: 19,design: .serif))
                                Spacer()
                                }
                                
                            
                            
                            VStack(spacing: 15){
                                
                                HStack{
                                    Text(y.titletip1)
                                        .foregroundColor(.yellow)
                                        .bold()
                                        .font(.system(size: 20, design: .serif))
                                    Spacer()
                                    
                                }
                                Text(y.textip1)
                                    .foregroundColor(.white)
                                    .font(.system(size: 19, design: .serif))
                                
                                Spacer()
                            }
                            
                        }
                        
                        
                    }

                }
            }
        }
        //.toolbarBackground(.visible, for: .navigationBar)
    }
}

struct TipsPage_Previews: PreviewProvider {
    static var previews: some View {
        TipsPage(y: Tips(name: "Lâmpadas", icon: "lightbulb.fill",
            titletip: " 1 - Evite ligar e desligar o aparelho em curtos períodos de tempo",
            textip: "\tEssa dica de como economizar energia com ar-condicionado é o oposto do que é feito de maneira intuitiva, mas a verdade é que se você for se ausentar por um período curto de tempo, ligar e desligar o aparelho não é vantajoso, pois gera sobrecarga em vez de economizar.\n\tIsso acontece porque o equipamento gasta tempo e trabalha para resfriar e se, em um curto intervalo, for desligado, o ambiente esquenta novamente. Quando for religar, há consumo mais uma vez devido ao esforço do aparelho.",
            titletip1: " 2 - Limpe o ar-condicionado periodicamente",
            textip1: "\n\tA sujeira acumulada nos filtros do ar-condicionado pode prejudicar o funcionamento e reduzir o tempo de vida útil do aparelho, comprometendo todas as outras dicas de como economizar energia com ar-condicionado.\n\tPor isso, vale separar um tempo na agenda para priorizar a manutenção e a limpeza do ar-condicionado, pois os benefícios da higienização correta dos filtros são inúmeros, como: não causam gastos desnecessários na conta de energia elétrica, auxiliam na prevenção da sobrecarga do aparelho para resfriar e também preservam a saúde dos usuários, evitando a proliferação de fungos e bactérias no ambiente."))
    }
}

//
//  TipsScreen.swift
//  ProjetoFinalApp
//
//  Created by Turma01-7 on 02/02/24.
//

import SwiftUI

struct Tips : Identifiable{
    var  id = UUID()
    let name : String
    let icon : String
    let titletip : String
    let textip: String
    let titletip1 : String
    let textip1 : String
    
    
    
}


let select = [
    Tips(name: "Lâmpadas", icon: "lightbulb.fill",
         titletip: "\t1 - Evite ligar e desligar o aparelho em curtos períodos de tempo",
         textip: "\tEssa dica de como economizar energia com ar-condicionado é o oposto do que é feito de maneira intuitiva, mas a verdade é que se você for se ausentar por um período curto de tempo, ligar e desligar o aparelho não é vantajoso, pois gera sobrecarga em vez de economizar.\n\tIsso acontece porque o equipamento gasta tempo e trabalha para resfriar e se, em um curto intervalo, for desligado, o ambiente esquenta novamente. Quando for religar, há consumo mais uma vez devido ao esforço do aparelho.",
         titletip1: "\t2 - Limpe o ar-condicionado periodicamente",
         textip1: "\n\tA sujeira acumulada nos filtros do ar-condicionado pode prejudicar o funcionamento e reduzir o tempo de vida útil do aparelho, comprometendo todas as outras dicas de como economizar energia com ar-condicionado.\n\tPor isso, vale separar um tempo na agenda para priorizar a manutenção e a limpeza do ar-condicionado, pois os benefícios da higienização correta dos filtros são inúmeros, como: não causam gastos desnecessários na conta de energia elétrica, auxiliam na prevenção da sobrecarga do aparelho para resfriar e também preservam a saúde dos usuários, evitando a proliferação de fungos e bactérias no ambiente."),
    
    
    Tips(name: "Ar-condicionado", icon: "snowflake", titletip: "\t1 - Verifique se o aparelho possui o selo Procel. ", textip: "\tO primeiro passo para saber como economizar energia com ar-condicionado é checar essa informação. O selo Procel (Programa Nacional de Conservação de Energia Elétrica) revela se o seu aparelho será mais ou menos econômico, de acordo com a escala que varia de A até G, sendo A o mais econômico e G o menos econômico. \n\tO ideal é que esse ponto seja pensado antes mesmo da compra do seu ar-condicionado, para que o investimento contemple o melhor custo-benefício.",
         titletip1: "\t2 - Limpe o ar-condicionado periodicamente", textip1: "\tA sujeira acumulada nos filtros do ar-condicionado pode prejudicar o funcionamento e reduzir o tempo de vida útil do aparelho, comprometendo todas as outras dicas de como economizar energia com ar-condicionado.\n\tPor isso, vale separar um tempo na agenda para priorizar a manutenção e a limpeza do ar-condicionado, pois os benefícios da higienização correta dos filtros são inúmeros, como: não causam gastos desnecessários na conta de energia elétrica, auxiliam na prevenção da sobrecarga do aparelho para resfriar e também preservam a saúde dos usuários, evitando a proliferação de fungos e bactérias no ambiente."),
    
    Tips(name: "Geladeira", icon: "thermometer", titletip: "\t1- Evite abrir a geladeira o tempo todo", textip: "\n\tAbrir a geladeira o tempo todo é algo simples que pode aumentar o consumo de energia do seu aparelho. Acredite se quiser, mas existem pessoas que abrem a geladeira para pensar. Evite ficar abrindo a porta o tempo todo. Seja objetivo ao pegar o que deseja, pois manter a porta da geladeira aberta, vai fazer com que ela tenha um maior consumo para manter resfriada novamente ao fechar a porta.",
         titletip1: "\t2- Cuide o estado das borrachas de vedação",
         textip1: "\n\tAs borrachas que fazem a vedação da porta da geladeira devem ser muito bem cuidadas para não ficarem gastas. Essas borrachas fazem a vedação da porta da geladeira e não permitem que entre nenhuma temperatura para dentro dela. Sem o devido cuidado, elas podem ceder e permitir que o calor entre na geladeira, fazendo com que aumente o seu consumo. Isso pode até comprometer os alimentos, além de aumentar a sua conta de luz."),
    
    Tips(name: "Máquina de lavar", icon: "drop.fill", titletip: "\t1-Junte roupas para uma lavagem maior",
         textip: "\n\tO principal objetivo tanto para economizar energia com a máquina de lavar roupa quanto com outros eletrodomésticos que consomem mais energia é evitar ligá-los muitas vezes.\n\tEntão, planeje os dias de lavar roupa em casa. Assim, você pode juntar mais peças e fazer uma lavagem maior ao invés de ligar a máquina para sucessivas lavagens curtas.\n\tUtilizar cestos facilita a organização, a separação e evita a sensação caótica de ter roupas espalhadas pela lavanderia ou em cima de algum móvel.",
         titletip1: "\t2-Escolha a quantidade de água e ciclo de lavagem necessário",
         textip1: "\tAinda seguindo as dicas para economia dupla, coloque o nível de água adequado para a quantidade de roupa que você deseja lavar. Não se esqueça também de escolher o ciclo certo. \n\tCada modelo de máquina terá opções diferentes, então fique atento e lembre-se de indicar se são roupas brancas ou coloridas e se estão um pouco sujas, sujas ou muito sujas.\n\tÉ válido ler no manual da sua máquina para saber o tempo de cada ciclo e avaliar se é realmente necessário bater a roupa por tanto tempo."),
    
    
    Tips(name: "Ventilador", icon: "fan.desk",
         titletip: "\t1- Ajuste a velocidade",
         textip: "\n\tA primeira dica para economizar energia com o ventilador é sempre ficar de olho na velocidade. Se possível, use a velocidade mínima dele e reserve a capacidade máxima para situações de extrema necessidade, como em temperaturas mais elevadas.",
         titletip1: "\t 2- Combine seu ventilador com a circulação de ar natural", textip1: "Quando for possível, abra as janelas e deixe o ar natural entrar, permitindo que haja circulação natural de ar fresco. Dessa maneira, você evita o uso do ventilador e faz a sua conta de luz vir mais barata. "),
    
    Tips(name: "Computador", icon: "desktopcomputer",
         titletip: "\t1- Desligue seu PC quando não estiver em uso",
         textip: "\tMuitas pessoas acham que o processo de ligar e desligar o computador consome mais energia do que deixar o aparelho ligado. Não é verdade. Sempre que for se ausentar por mais de meia hora, vale a pena desligar o computador. Um bom exemplo é na hora do almoço. Um computador ligado durante 1 hora/dia consome 5,0 kwh/mês. \n\tNo decorrer de um ano, a economia decorrente de desligar o computador durante esta uma hora de almoço será de 60 kwh, o que leva cada pessoa que desligar seu computador a deixar de jogar na atmosfera 18 quilos de CO2. Esse volume corresponde ao emitido por um carro movido a gasolina ao percorrer 120 km. Mantenha-o desligado nos finais de semana, exceto quando for solicitado que a máquina permaneça ligada para atualização de softwares.",
         titletip1: "\t 2- Conserte em vez de trocar",
         textip1: "\tSe o seu computador quebrar, pense em consertá-lo em vez de trocá-lo por um novo. Segundo a Universidade das Nações Unidas (UNU), um computador comum pesa 24 quilos em média, e emprega ao menos dez vezes o seu peso em combustíveis fósseis, contribuindo desta forma para o gasto de energia e, conseqüentemente, para o aquecimento global. Gasta também 1.500 litros de água em seu processo de fabricação.\n\t Esta relação supera, proporcionalmente, por exemplo, a dos automóveis, que utilizam, no máximo, duas vezes o seu peso em matéria-prima e insumos. Um único chip de memória RAM consome 1,7 quilos de combustíveis fósseis e de substâncias químicas para ser produzido, o que corresponde a cerca de 400 vezes o seu peso."),
    
    Tips(name: "Televisão", icon: "tv.fill", titletip: "\t1- Não deixe o aparelho em stand-by",
         textip: "\n\tEm vez de apenas apertar o botão do controle remoto para desligar a TV, tire o aparelho da tomada. Mesmo quando está em stand-by, o televisor, assim como todos os eletrodomésticos, consome energia elétrica. Caso saia para uma viagem longa, lembre-se de desligar a chave geral de energia da sua casa para não correr nenhum risco.",
         titletip1: "\t2- Troque sua TV antiga", textip1: "\n\tAparelhos antigos consomem muito mais energia que os modelos modernos. Para economizar energia elétrica em casa, considere fazer um investimento e trocar os televisores antigos por opções mais novas, que consomem menos.\n\t Aparelhos eletrônicos estão entre os principais vilões do consumo de energia elétrica dentro de casa. Use seus aparelhos de TV com sabedoria e reduza substancialmente o consumo de energia dos seus televisores. O planeta – e sua conta bancária – agradecem.")
    
    
]

struct TipsScreen: View {
    var body: some View {
        
        NavigationStack{
  
            ZStack{
                Color("BackgroundBlue")
                    .ignoresSafeArea()
                ScrollView {
                    VStack{
                        HStack{
                            Text("Dicas")
                                .font(.system(size: 30, design: .rounded))
                                .foregroundColor(.white)
                                .bold()
                                .frame(width: 120, height: 100)
                            Spacer()
                        }
                        Spacer()
                        
                        ForEach(select) { select in
                            
                            NavigationLink(destination: TipsPage(y:select),
                                           
                                           label: {
                                
                                HStack{
                                    Image(systemName: select.icon)
                                    
                                        .font(.system(size: 50))
                                        .frame(width: 70)
                                        .foregroundColor(Color("Icons"))
                                    
                                    VStack(alignment: .leading){
                                        Text(select.name)
                                            .foregroundColor(.white)
                                            .padding()
                                        
                                    }
                                    Spacer()
                                    
                                    
                                }.padding()
                                
                            }) .onAppear {
                                 let backgroundblue = UIColor(Color("BackgroundBlue"))
                                UINavigationBarAppearance()
                                    .setColor(title: .orange, background: backgroundblue)
                            }
                            
                        }
                    }
                }
            }
            
            
        }  
    }
}

struct TipsScreen_Previews: PreviewProvider {
    static var previews: some View {
        TipsScreen()
    }
}

extension UINavigationBarAppearance {
    
    public static let backgroundblue = UIColor(Color("BackgroundBlue"))
    
    func setColor(title: UIColor? = nil, background: UIColor? = nil) {
        configureWithTransparentBackground()
        if let titleColor = title {
            largeTitleTextAttributes = [.foregroundColor: titleColor]
            titleTextAttributes = [.foregroundColor: titleColor]
        }
        backgroundColor = background
        UINavigationBar.appearance().scrollEdgeAppearance = self
        UINavigationBar.appearance().standardAppearance = self
    }
}

extension UIColor {
    
    public static let backgroundblue = UIColor(Color("BackgroundBlue"))
    
}

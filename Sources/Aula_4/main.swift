import Foundation

class User{
    let nome: String
    private let cpf: Int
    init(nome: String, cpf: Int){
        self.nome = nome
        self.cpf = cpf
    }
    public func getCpf() -> Int {
        return cpf
    }
}
 
class Conta: User{
    private var saldo: Double
    private var score: ScoreCategory
    private var email: String 
    private var limite: Double
    private var tipoConta: TipoConta
    private var senha: String

    init(nome: String, cpf: Int, email: String, senha: String, tipoConta: TipoConta){
        self.email = email
        self.senha = senha
        self.tipoConta = tipoConta

        saldo = 0
        score = .baixo
        limite = 0
        super.init(nome: nome, cpf: cpf)
}

    public func getSaldo() -> Double {
        return saldo
    }
    public func getScore() -> ScoreCategory{
        return score
    }
    public func getEmail() -> String{
        return email
    }
}
 
enum TipoConta{
    case corrente
    case poupanca
}
enum ScoreCategory{
    case baixo
    case medio
    case alto 
}
 
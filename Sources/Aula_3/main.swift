import Foundation

class Cofre {



 private var saldo: Double



 init() {

 self.saldo = 0.0

 }



 public func depositar(quantia: Double) {

 if quantia > 0 {

 saldo += quantia

 } else {

 print("Ops! A quantia para depósito deve ser positiva.")

 }

 }

 public func sacar(quantia: Double) {

 if quantia <= 0 {

 print("Ops! A quantia para saque deve ser positiva.")

 } else if quantia > saldo {

 print("Ops! Saldo insuficiente.")

 } else {

 saldo -= quantia

 }

 }



 public func getSaldo() -> Double {

return saldo

 }

}
import UIKit


let formatador = DateFormatter()
formatador.dateFormat = "dd/MM/yyyy"
let meuAniversario = formatador.date(from: "31/03/2023")!
let aniversaryCallendar = Calendar.current
let aniversaryYear = aniversaryCallendar.component(.year, from: meuAniversario)


let currentDate = Date()
let currentCalendar = Calendar.current
let currentYear = currentCalendar.component(.year, from: currentDate)

func calcularData(aniversario: Date) -> String {
    if aniversaryYear < currentYear {
        return("Seu aniversário ja passou!")
    } else {
        let segundos = aniversario.timeIntervalSince(currentDate)
        let days = Int(segundos / (60 * 60 * 24))
        return ("Faltam \(days) dias pro seu aniverário!")
    }
}
let mensagem = calcularData(aniversario: meuAniversario)
print(mensagem)
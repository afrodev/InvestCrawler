import Foundation





enum Registro: String {
    case header = "00"
    case papel = "01"
    case trailer = "99"
}


let file = "importacao-acoes/DemoCotacoes.txt"

// Reading file called impotacao-acoes at my desktop
if let dir = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask).first {
    let path = dir.appendingPathComponent(file)
    
    do {
        let data = try String(contentsOf: path, encoding: String.Encoding.utf8)
        let myStrings = data.components(separatedBy: .newlines)
        
        var i = 0
        for s in myStrings {
            if !s.isEmpty {
                let cod = s.substring(with: 0..<2)
                if let reg = Registro(rawValue: cod) {
                    switch reg {
                    case .header:
                        let h = Header(bigString: s)
                        print(h.tipoRegistro)
                        print(h.nomeArquivo)
                        print(h.codigoOrigem)
                        print(h.dataGeracaoArquivo)
                        print(h.reserva)
                        
                    case .papel:
                        let p = PapelMercado(bigString: s)
                        print(p.codigoPapelISIN)
                        
                    case .trailer:
                        let t = Trailer(bigString: s)
                        print(t.totalRegistros)
                        
                    }
                }
            }
            i += 1
        }
        
        
    } catch {
        print("ERROR")
    }
}









/*
 
 let path = "/Users/humbertovieira/Desktop/importacao-acoes/DemoCotacoes.txt"
 
 
 if let url = URL(string: path) {
 
 do {
 let data = try String(contentsOf: url, encoding: .utf8)
 let myStrings = data.components(separatedBy: .newlines)
 
 for s in myStrings {
 print("STRING - \(s)")
 }
 
 } catch {
 print("ERROR")
 }
 
 }*/

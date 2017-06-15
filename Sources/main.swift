import Foundation








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
                if i == 0 {
                    let h = Header(bigString: s)
                    print(h.tipoRegistro)
                    print(h.nomeArquivo)
                    print(h.codigoOrigem)
                    print(h.dataGeracaoArquivo)
                    print(h.reserva)
                }
               i += 1
            }
            
        }
        print(i)
        
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

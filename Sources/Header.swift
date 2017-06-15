//
//  Header.swift
//  InvestCrawler
//
//  Created by Humberto Vieira on 15/06/17.
//
//

import Foundation

class Header {
    var tipoRegistro: String
    var nomeArquivo: String
    var codigoOrigem: String
    var dataGeracaoArquivo: String
    var reserva: String
    
    init(bigString: String) {
        self.tipoRegistro = bigString.substring(with: 0..<2)
        self.nomeArquivo = bigString.substring(with: 2..<15)
        self.codigoOrigem = bigString.substring(with: 15..<23)
        self.dataGeracaoArquivo = bigString.substring(with: 23..<31)
        self.reserva = bigString.substring(with: 32..<245)
        
        
    }
}

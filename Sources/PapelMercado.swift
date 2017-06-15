//
//  PapelMercado.swift
//  InvestCrawler
//
//  Created by Humberto Vieira on 15/06/17.
//
//

import Foundation



class PapelMercado {
    var tipoRegistro: String
    var dataPregao: String
    //var codigoOrigem: String
    var codigoBDI: String
    var codigoNegociacao: String
    var tipoMercado: String
    var nomeResumido: String
    var especificacaoPapel: String
    var prazoMercado: String // Em dias
    var moedaReferencia: String
    var precoAbertura: String // no pregão
    var precoMaximo: String
    var precoMinimo: String
    var precoMedio: String
    var precoUltimo: String
    var precoMelhorOfertaCompra: String // melhor oferta de compra
    var precoMelhorOfertaVenda: String // melhor oferta de venda
    var numeroTotalNegocios: String // Número total de negócios no pregão
    var quantidadeTitulosNegociados: String // Numero de titulos negociados
    var volumeTotalTitulosNegociados: String
    var precoExercicio: String
    var indicadorCorrelacaoPrecos: String
    var dataVencimentoMercado: String
    var fatorCotacaoPapel: String
    var precoExercicioPontos: String
    var codigoPapelISIN: String
    var númeroDistribuiçãoPapel: String
    
    
    init(bigString: String) {
        self.tipoRegistro = bigString.substring(with: 0..<2)
        self.dataPregao = bigString.substring(with: 2..<10)
        self.codigoBDI = bigString.substring(with: 10..<12)
        self.codigoNegociacao = bigString.substring(with: 12..<24)
        self.tipoMercado = bigString.substring(with: 24..<27)
        self.nomeResumido = bigString.substring(with: 27..<39)
        self.especificacaoPapel = bigString.substring(with: 39..<49)
        self.prazoMercado = bigString.substring(with: 49..<52)
        self.moedaReferencia = bigString.substring(with: 52..<56)
        self.precoAbertura = bigString.substring(with: 56..<69)
        self.precoMaximo = bigString.substring(with: 69..<82)
        self.precoMinimo = bigString.substring(with: 82..<95)
        self.precoMedio = bigString.substring(with: 95..<108)
        self.precoUltimo = bigString.substring(with: 108..<121)
        self.precoMelhorOfertaCompra = bigString.substring(with: 121..<134)
        self.precoMelhorOfertaVenda = bigString.substring(with: 134..<147)
        self.numeroTotalNegocios = bigString.substring(with: 147..<152)
        self.quantidadeTitulosNegociados = bigString.substring(with: 152..<170)
        self.volumeTotalTitulosNegociados = bigString.substring(with: 170..<188)
        self.precoExercicio = bigString.substring(with: 188..<201)
        self.indicadorCorrelacaoPrecos = bigString.substring(with: 201..<202)
        self.dataVencimentoMercado = bigString.substring(with: 202..<210)
        self.fatorCotacaoPapel = bigString.substring(with: 210..<217)
        self.precoExercicioPontos = bigString.substring(with: 217..<230)
        self.codigoPapelISIN = bigString.substring(with: 230..<242)
        self.númeroDistribuiçãoPapel = bigString.substring(with: 242..<245)
    }
    
    

}



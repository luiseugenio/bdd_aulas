# language: pt
Funcionalidade: Baralho
  Cenario: tres do mesmo tipo ganha dois pares
    Dado uma mao com as seguintes cartas
    | valor | naipe|
    | 2 | COPAS |
    | 2 | ESPADAS |
    | 2 | PAUS |
    | 4 | OUROS|
    | A | COPAS |
    E outra mao com as seguintes cartas
    | valor | naipe|
    | 2 | COPAS |
    | 2 | ESPADAS |
    | 4 | PAUS |
    | 4 | OUROS |
    | A | COPAS |
    Entao a primeira mao deve ganhar da segunda mao    

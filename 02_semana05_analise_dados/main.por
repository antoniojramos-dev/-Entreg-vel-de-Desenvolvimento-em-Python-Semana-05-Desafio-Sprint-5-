// Semana 05: leitura e validação conceitual de dados em Portugol.
// A sintaxe de regex varia entre linguagens; aqui a validação é explicada por funções.
programa {
    funcao logico email_valido(cadeia email) {
        // Em uma implementação completa, usaríamos a biblioteca de expressões regulares.
        // A regra exige texto antes de @ e um domínio depois de @.
        retorne contem(email, "@")
    }

    funcao logico cpf_valido(cadeia cpf) {
        // O CPF esperado possui 14 caracteres no formato 000.000.000-00.
        retorne comprimento(cpf) == 14
    }

    funcao inicio() {
        // Em Portugol, o arquivo pode ser lido linha a linha com a biblioteca de arquivos.
        // O vetor abaixo representa registros já obtidos do CSV para a demonstração.
        cadeia emails[4] = {"ana@email.com", "bruno.email.com", "carla@email.com", "diego@email.com"}
        cadeia cpfs[4] = {"123.456.789-09", "111.222.333-44", "987.654.321-00", "12345678909"}
        inteiro validos = 0
        inteiro i

        para (i = 0; i < 4; i++) {
            tente {
                se (email_valido(emails[i]) e cpf_valido(cpfs[i])) {
                    escreva("Registro ", i + 1, ": válido\n")
                    validos++
                } senao {
                    escreva("Registro ", i + 1, ": inválido\n")
                }
            } capture (cadeia erro) {
                // Tratamento equivalente ao try/except do Python.
                escreva("Erro: ", erro, "\n")
            }
        }
        escreva("Total válido: ", validos, " de 4\n")
    }
}

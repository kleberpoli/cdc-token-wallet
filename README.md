# Carteira de Tokens Simples

## Descrição
Este projeto implementa uma **Carteira de Tokens Simples** utilizando Cadence. Usuários podem criar uma carteira, depositar tokens e sacar tokens de suas carteiras. Esse projeto simula o funcionamento básico de carteiras digitais no ambiente blockchain.

## Funcionalidades
- Criação de carteiras para usuários.
- Depósito de tokens em uma carteira.
- Saque de tokens de uma carteira.
- Verificação do saldo da carteira.

## Estrutura do Código
- **`balances`**: Mapeamento entre endereços de usuários e seus saldos.
- **`createWallet(owner: Address)`**: Cria uma nova carteira para um usuário.
- **`deposit(amount: UFix64, owner: Address)`**: Deposita tokens na carteira de um usuário.
- **`withdraw(amount: UFix64, owner: Address)`**: Permite que o usuário saque tokens da carteira.
- **`getBalance(owner: Address)`**: Retorna o saldo da carteira de um usuário.

## Como Executar
1. Implemente o contrato em uma rede Flow Blockchain.
2. Utilize ferramentas como Flow CLI ou o playground da Flow para criar uma carteira e realizar operações de depósito e saque.

## Requisitos
- Cadence e Flow CLI instalados.
- Conta na Flow Blockchain.

## Melhorias Futuras
- Adicionar suporte a diferentes tipos de tokens.
- Implementar transferências diretas entre carteiras.
- Suporte a múltiplas assinaturas para operações em carteiras.

## Licença
MIT License
#!/bin/bash

# Gerar um número aleatório entre 1 e 100
numero_aleatorio=$((RANDOM % 100 + 1))

echo "Bem-vindo ao jogo de adivinhação!"
echo "Tente adivinhar o número entre 1 e 100."

tentativas=0
acertou=false

while [[ $acertou == false ]]; do
    echo "Digite o seu palpite:"
    read palpite
    
    if [[ ! $palpite =~ ^[0-9]+$ ]]; then
        echo "Por favor, digite um número válido."
        continue
    fi
    
    ((tentativas++))
    
    if [[ $palpite -eq $numero_aleatorio ]]; then
        echo "Parabéns! Você acertou o número em $tentativas tentativas."
        acertou=true
    elif [[ $palpite -lt $numero_aleatorio ]]; then
        echo "Tente um número maior."
    else
        echo "Tente um número menor."
    fi
done

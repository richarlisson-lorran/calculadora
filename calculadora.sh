


soma() {
  local resultado=$(bc <<< "scale=2; $1 + $2")
  echo "Resultado da soma: $resultado"
}


subtracao() {
  local resultado=$(bc <<< "scale=2; $1 - $2")
  echo "Resultado da subtração: $resultado"
}


multiplicacao() {
  local resultado=$(bc <<< "scale=2; $1 * $2")
  echo "Resultado da multiplicação: $resultado"
}


divisao() {
  if [ "$2" -eq 0 ]; then
    echo "Erro: Divisão por zero não é permitida."
  else
    local resultado=$(bc <<< "scale=2; $1 / $2")
    echo "Resultado da divisão: $resultado"
  fi
}


raiz_quadrada() {
  local resultado=$(bc <<< "scale=2; sqrt($1)")
  echo "Resultado da raiz quadrada: $resultado"
}


potencia() {
  local resultado=$(bc <<< "scale=2; $1 ^ $2")
  echo "Resultado da potência: $resultado"
}


menu() {
  clear
  echo "Calculadora em Shell Script"
  echo "1. Soma"
  echo "2. Subtração"
  echo "3. Multiplicação"
  echo "4. Divisão"
  echo "5. Raiz Quadrada"
  echo "6. Potência"
  echo "7. Sair"
}


while true; do
  menu
  read -p "Escolha uma opção (1-7): " opcao

  case $opcao in
    1)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      soma "$num1" "$num2"
      ;;
    2)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      subtracao "$num1" "$num2"
      ;;
    3)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      multiplicacao "$num1" "$num2"
      ;;
    4)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      divisao "$num1" "$num2"
      ;;
    5)
      read -p "Digite o número: " num1
      raiz_quadrada "$num1"
      ;;
    6)
      read -p "Digite a base: " num1
      read -p "Digite o expoente: " num2
      potencia "$num1" "$num2"
      ;;
    7)
      echo "Saindo da calculadora."
      exit 0
      ;;
    *)
      echo "Opção inválida. Tente novamente."
      ;;
  esac

  read -p "Pressione Enter para continuar..."
done


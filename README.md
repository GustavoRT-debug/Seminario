![CI-CD]([https://github.com/GustavoRT-debug/Seminario/actions/workflows/main.yml/badge.svg)
# Seminario Usando Ruby

## Calculadora em Ruby:

Foi feita uma calculadora em Ruby para o seminário de testes, portanto, o código em questão fornece uma visão geral de uma calculadora em Ruby e testes automatizados para a mesma.

## Visão geral:
O código foi feito no VSCode e para isso é necessário instalar a extensão Ruby LSP. Com isso, são gerados arquivos na pasta .vscode para aplicação da linguagem de programação Ruby e é configurado o depurador 'launch.json'.

## Básico do Ruby
Ruby é uma linguagem de programação de alto nível, interpretada e orientada a objetos, conhecida por sua simplicidade e produtividade.

- O Ruby possui sintaxe simples e fácil de ler, como o caso do puts que é usado para imprimir.

exemplo: puts "Hello, World!"
Isso imprime "Hello, World!".

- No Ruby, você não precisa declarar variáveis, é simplesmente definido um valor ao nome.

- Gems: São bibliotecas e ferramentas empacotadas que podem ser instaladas para adicionar funcionalidades ao Ruby.

- Terminologia dos arquivos:

.rb: Extensão para arquivos Ruby. Contém código Ruby.
require: Usado para incluir bibliotecas e outros arquivos Ruby

# Estrutura do Codigo:

- No arquivo 'calculadora.rb' é implementada a classe Calculator e nela são realizadas as operações matemáticas.

## Método calculate 

- Método que aceita três parâmetros: 'a' (primeiro número), 'b' (segundo número) e 'operation' (string que define a operação a ser realizada).

- No método são realizadas diferentes operações matemáticas, dependendo dos parâmetros que são passados pelo método start.

- O arquivo também possui outros métodos ou funções como o 'factorial' para realizar a operação fatorial.

## Método start

- É um menu basicamente para interagir na calculadora.
- Nele, há um loop com as seguintes características:
- Solicita ao usuário a escolha de uma operação ou digitar 'sair' para terminar.
- Solicita ao usuário para digitar o primeiro número (a).
- Solicita ao usuário para digitar o segundo número (b) (não sendo necessário para algumas operações).
- Chama o método 'calculate' com os valores inseridos e imprime o resultado.


Executa Calculator.start

- Para executar a calculadora, é necessário acessar o diretório dela e executá-la no terminal com o comando ruby calculadora.rb.

## Teste

- Para executar os testes, é necessário instalar a gem 'minitest' com o comando:
gem install minitest

- É necessário acessar o diretório do teste e, em seguida, para executá-lo, digitar o comando com o nome do teste:
ruby testes.rb

Funcionamento:
- no teste é criado uma instância da classe Calculator antes de cada teste.
- o teste verifica se determinadas contas estão corretas
- verifica operações validas e invalidas
- e nisso é exibido o relatório

# Conclusão
Neste arquivo, é dada uma visão geral de como a calculadora em Ruby foi implementada e como seus testes automatizados foram configurados. A calculadora suporta várias operações matemáticas e trata casos especiais como divisão por zero e operações inválidas. Os testes garantem que todas essas funcionalidades funcionem conforme esperado.



## Autores
[
Marcelo Henrique Souza Abrantes,
Gustavo Ramos Lages Torres
]


# Testbootc

Este projeto faz parte do meu aprendizado em **Move** e **Sui**, demonstrando a criação de módulos simples e integração básica com o ecossistema Sui. O objetivo principal deste repositório é explorar os conceitos da linguagem Move, além de trabalhar com contratos inteligentes na blockchain Sui.

## Estrutura do Projeto

- **`Move.toml`**: Arquivo de configuração do pacote, incluindo dependências e endereços nomeados.  
- **`hello_world.move`**: Módulo simples que imprime a mensagem "Hello, Move!" utilizando a biblioteca padrão do Move.  
- **`hello.move`**: Módulo que imprime "Hello, Sui!" e utiliza a string `String` para exemplificar o uso de tipos no Move.

## Funcionalidades

Este projeto contém dois módulos principais:

1. **`hello_world.move`**:  
   O módulo define uma função pública chamada `say_hello()`, que imprime "Hello, Move!" no console.
   ```move
   module test_bootc::hello_world {
       use std::debug::print;
       use std::string::utf8;

       public fun say_hello() {
           print(&utf8(b"Hello, Move!"));
       }
   }
hello.move:
Este módulo define a função hello(), que imprime "Hello, Sui!" usando o tipo String do Move.
module 0x0::hello {
    use std::string::{String, utf8};
    use std::debug::print;

    public fun hello() {
        let msg: String = utf8(b"Hello, Sui!");
        print(&msg);
    }
}
Como Compilar

Para compilar o projeto e gerar os artefatos necessários, basta executar o seguinte comando no terminal dentro do diretório do projeto:
sui move build
Este comando irá compilar o código Move e gerar o bytecode dos módulos.

Como Testar

Para rodar os testes em modo de desenvolvimento e verificar se os módulos estão funcionando corretamente, use o comando:
sui move test
Isso irá rodar os testes definidos no projeto (se houverem testes) e imprimir os resultados no terminal.

Endereços Nomeados

No arquivo Move.toml, o endereço nomeado test_bootc é configurado para o seguinte endereço:

[addresses]
test_bootc = "0xd3626fbb67b491fdd600d476834a273767b49aa62e3f749c6d5e7fd5c59dc15d"


Este endereço nomeado é utilizado no código Move como @test_bootc.

Dependências

Atualmente, o projeto não possui dependências externas. No entanto, é possível adicionar dependências locais ou remotas no arquivo Move.toml caso o projeto seja expandido no futuro.

Exemplo de dependência remota:

[dependencies]
# Exemplo de dependência remota
MyRemotePackage = { git = "https://some.remote/host.git", subdir = "remote/path", rev = "main" }

Como Contribuir

Se você quiser contribuir para este projeto, fique à vontade para abrir um pull request ou issue. Sugestões, correções e melhorias são sempre bem-vindas!

Faça um fork do repositório.

Crie uma nova branch para suas alterações.

Envie um pull request com suas mudanças.

Autor

Crisan Cesar
GitHub: cesarcrisanGG-cyber


### O que foi adicionado:

- **Descrição**: Uma breve descrição sobre o propósito do projeto, que foca no aprendizado de Move e Sui.
- **Funcionalidades**: Explicações detalhadas sobre os módulos `hello_world.move` e `hello.move`, com código exemplo.
- **Como compilar e testar**: Explicações mais detalhadas sobre os comandos de compilação e execução dos testes.
- **Dependências**: Foi adicionado um exemplo de como incluir dependências externas no arquivo `Move.toml`, caso seja necessário no futuro.
- **Contribuições**: Instruções sobre como contribuir para o repositório.
- **Licença**: Informações sobre a falta de uma licença por enquanto.



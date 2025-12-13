# Testbootc

Projeto desenvolvido durante atividades de bootcamp com foco na **linguagem Move**, utilizando a **edição 2024 (beta)** e conceitos fundamentais do ecossistema **Sui**.

Este repositório demonstra a estrutura básica de um pacote Move, configuração via `Move.toml` e implementação de módulos simples para fins de aprendizado.

---

## 🎯 Objetivo

- Compreender a estrutura de um projeto Move
- Configurar corretamente o arquivo `Move.toml`
- Utilizar **named addresses**
- Criar e executar módulos básicos em Move
- Praticar o fluxo de desenvolvimento no ecossistema Sui

---

## 🛠️ Tecnologias

- Move (edition 2024.beta)
- Sui
- Git e GitHub
- Linux / WSL
- Terminal (CLI)

---

## 📁 Estrutura do Projeto

```text
Testbootc/
├── Move.toml
├── sources/
│   ├── hello_world.move
│   └── hello.move
└── README.md
⚙️ Configuração (Move.toml)
toml
Copiar código
[package]
name = "test_bootc"
edition = "2024.beta"

[addresses]
test_bootc = "0xd3626fbb67b491fdd600d476834a273767b49aa62e3f749c6d5e7fd5c59dc15d"
📦 Módulos
hello_world.move
move
Copiar código
module test_bootc::hello_world {
    use std::debug::print;
    use std::string::utf8;

    public fun say_hello() {
        print(&utf8(b"Hello, Move!"));
    }
}
Função pública que imprime a mensagem "Hello, Move!", utilizada para testes iniciais e aprendizado da linguagem.

hello.move
move
Copiar código
module 0x0::hello {
    use std::string::{String, utf8};
    use std::debug::print;

    public fun hello() {
        let msg: String = utf8(b"Hello, Sui!");
        print(&msg);
    }
}
Exemplo simples de criação e impressão de uma String em Move.

▶️ Build e Testes
Compilar o projeto:

bash
Copiar código
sui move build
Executar testes (modo desenvolvimento):

bash
Copiar código
sui move test
📚 Aprendizados
Estrutura de pacotes Move

Uso do Move.toml

Named addresses

Módulos e funções públicas

Integração básica com Sui

👤 Autor
Crisan Cesar
GitHub: https://github.com/cesarcrisanGG-cyber

📝 Nota
Este projeto faz parte do meu processo de aprendizado em Move e Sui durante um bootcamp. Projetos mais avançados, incluindo NFTs e deploys em rede, estão disponíveis em outros repositórios do meu GitHub.

🚀 Comandos finais
bash
Copiar código
git add README.md
git commit -m "docs: add README"
git push origin main


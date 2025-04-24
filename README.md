
# 🎶 LyricSearch 

O **LyricSearch** é um aplicativo mobile desenvolvido em SwiftUI que permite ao usuário buscar letras de músicas de forma simples e rápida. O projeto segue o padrão arquitetural **MVVM (Model-View-ViewModel)**, promovendo uma estrutura limpa, organizada e escalável.

---

## 🔧 Tecnologias e Ferramentas

- **SwiftUI** – Interface declarativa
- **MVVM** – Arquitetura com separação de responsabilidades
- **URLSession** – Requisições HTTP para API de letras
- **Xcode** – Ambiente de desenvolvimento

---

## 🧩 Estrutura do Projeto

```
LyricSearch/
├── mobile/
│   ├── Model/                # Modelos de dados e estruturas
│   │   └── Model.swift
│   ├── ViewModel/            # Lógica e estado da interface
│   │   └── ViewModel.swift
│   ├── View/                 # Interface do usuário
│   │   └── ContentView.swift
│   ├── Resources/            # Assets e conteúdo de pré-visualização
│   │   ├── Assets.xcassets/
│   │   └── Preview Content/
│   ├── APIApp.swift          # Arquivo principal do app
│   └── API.xcodeproj/
│
├── media/                    # Recursos visuais e gravações
│   ├── lyricgif.gif
│   └── apresentacao.mov
│
└── README.md
```

---


## ▶️ Como Rodar o App

1. Clone o repositório:
   ```bash
   git clone https://github.com/marcellafccosta/LyricSearch.git
   ```
2. Abra o arquivo `API.xcodeproj` no Xcode.
3. Selecione um simulador ou dispositivo físico.
4. Execute com `Cmd + R`.

---

## 📸 Demonstração

![LyricSearch Demo](media/lyricgif.gif)

---

## 👩‍💻 Desenvolvido por

- [Marcella Chaves](https://github.com/marcellafccosta)

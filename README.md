# flutter_exemplo_bloc

Este repositório demonstra uma implementação simples do padrão **BLoC (Business Logic Component)** no Flutter, utilizando o pacote oficial `flutter_bloc`.  
É ideal para quem deseja aprender como organizar o código e separar a lógica de negócios da interface em aplicações Flutter.

---

## 📁 Estrutura do Projeto

```
lib/
├── main.dart
├── app.dart
├── features/
│   └── home/
│       ├── bloc/
│       │   ├── home_bloc.dart
│       │   ├── home_event.dart
│       │   └── home_state.dart
│       └── view/
│           └── home_page.dart
test/
└── features/
    └── home/
        └── bloc/
            └── home_bloc_test.dart
```

- `main.dart`: Ponto de entrada da aplicação.
- `app.dart`: Configuração principal do app.
- `bloc/`: Arquivos responsáveis pelo gerenciamento de estado com BLoC (eventos, estados e bloc).
- `view/`: Interface com o usuário da página principal.
- `test/`: Contém testes automatizados para validar o comportamento do BLoC.

---

## 🚀 Funcionalidades

- Uso de `flutter_bloc` para gerenciamento de estado.
- Separação clara entre interface e lógica de negócios.
- Exemplo funcional de um contador reativo.

---

## 🧪 Testes Automatizados

O projeto inclui testes automatizados utilizando o pacote `bloc_test`.  
Esses testes validam o comportamento do `HomeBloc`, garantindo que os estados esperados sejam emitidos em resposta aos eventos.

Para executar os testes, utilize o seguinte comando:

```bash
flutter test
```

---

## 📖 Artigo no Medium

Este repositório é acompanhado por um artigo completo no Medium, explicando o padrão BLoC e como ele foi implementado aqui.

👉 **Leia o artigo completo:**  
[Flutter: Gerenciamento de estado com BLoC ✳️](https://medium.com/@gabriel.araujo.caires/flutter-gerenciamento-de-estado-com-bloc-%EF%B8%8F-4e23bd4955bd)

No artigo você encontra:

- Conceitos fundamentais do BLoC.
- Vantagens e desvantagens.
- Estrutura recomendada para projetos Flutter profissionais.
- Código comentado e explicado passo a passo.

---

![Texto alternativo](https://miro.medium.com/v2/resize:fit:368/format:webp/1*htrxKmrX9eWjDzHjuhmX-w.jpeg)


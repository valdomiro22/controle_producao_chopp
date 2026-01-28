# Controle de Produção de Chopp

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Riverpod](https://img.shields.io/badge/Riverpod-2.0+-blue.svg)](https://riverpod.dev)
[![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)](https://firebase.google.com)

Aplicativo mobile multiplataforma desenvolvido em **Flutter** para controle e gerenciamento da produção de chopp. O objetivo é auxiliar produtores artesanais ou pequenas cervejarias no acompanhamento de lotes, receitas, estoque de insumos, etapas de produção e relatórios.

O projeto está em desenvolvimento ativo e serve como base de estudos avançados em arquitetura limpa (Clean Architecture) com Riverpod.

## Funcionalidades Principais (em desenvolvimento/planejadas)

- Cadastro e gerenciamento de receitas de chopp
- Controle de lotes de produção (início, fermentação, maturação, envase)
- Registro de insumos e controle de estoque
- Acompanhamento de etapas com datas e observações
- Autenticação de usuários (Firebase Authentication)
- Sincronização de dados em tempo real (Firebase Firestore)
- Relatórios básicos de produção
- Telas responsivas para mobile (Android/iOS) e possivelmente web/desktop

## Tecnologias Utilizadas

- **Flutter** – Framework principal (multiplataforma)
- **Dart** – Linguagem
- **Riverpod** – Gerenciamento de estado escalável e testável
- **Clean Architecture** – Separação clara em camadas:
    - `domain`: Entidades e casos de uso (lógica de negócio pura)
    - `data`: Repositórios, datasources (remote/local) e mappers
    - `presentation`: Providers Riverpod, telas e widgets
- **GetIt + Injectable** – Injeção de dependências
- **Firebase** – Backend (Authentication, Firestore, possivelmente Storage)
- **Dio** ou **http** – Chamadas de API (se houver integração externa)
- Outras dependências comuns: `flutter_riverpod`, `freezed`, `dartz`, etc.

## Estrutura do Projeto

O projeto segue rigorosamente a **Clean Architecture** organizada por features, tornando-o altamente escalável e manutenível:

```
lib/
├── core/                  # Recursos compartilhados globalmente
│   ├── constants/
│   ├── error/
│   ├── network/
│   ├── theme/
│   ├── utils/
│   └── di/                # Injeção de dependências (get_it + injectable)
├── features/              # Todas as features do app
│   ├── auth/
│   ├── receitas/
│   ├── lotes/
│   ├── estoque/
│   └── ...                # Outras features conforme necessidade
├── presentation/          # Telas globais (splash, onboarding, router)
│   └── router/
├── generated/             # Arquivos gerados (ex: freezed, injectable)
└── main.dart
```

## Pré-requisitos

- Flutter SDK (versão estável mais recente)
- Dart SDK
- Android Studio / VS Code (com plugins Flutter/Dart)
- Conta Firebase (para autenticação e banco de dados)

## Instalação

1. Clone o repositório:
   ```bash
   git clone https://github.com/valdomiro22/controle_producao_chopp.git
   cd controle_producao_chopp
   ```

2. Instale as dependências:
   ```bash
   flutter pub get
   ```

3. Configure o Firebase:
    - Crie um projeto no [Firebase Console](https://console.firebase.google.com)
    - Adicione os apps Android/iOS
    - Baixe os arquivos `google-services.json` (Android) e `GoogleService-Info.plist` (iOS) e coloque nas pastas corretas
    - Ative Authentication e Firestore

4. Gere os arquivos de injeção de dependências (se usar injectable):
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

## Como Executar

```bash
flutter run
```

Ou selecione o dispositivo no Android Studio/VS Code.

Para builds de produção:
```bash
flutter build apk     # Android
flutter build ios     # iOS (requer macOS)
flutter build web     # Web
```

## Testes

Os testes unitários e de widgets estão organizados nas pastas `test/` seguindo a mesma estrutura de features.

Execute:
```bash
flutter test
```

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests.

1. Fork o projeto
2. Crie uma branch para sua feature (`git checkout -b feature/nova-funcionalidade`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova funcionalidade'`)
4. Push para a branch (`git push origin feature/nova-funcionalidade`)
5. Abra um Pull Request

## Licença

Distribuído sob a licença MIT. Veja `LICENSE` para mais informações.

---

**Desenvolvido por Valdomiro**  
Qualquer dúvida, abra uma issue ou entre em contato! 🍺
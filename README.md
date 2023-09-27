# Welcome to the H LAB Cortex Core - FHIR Implementation Guide Repository

## Pre-requisites

- Install [**Volta⚡**](https://volta.sh/ 'Volta - The Hassle-Free JavaScript Tool Manager') from [guide](https://docs.volta.sh/guide/getting-started 'Getting Started | Volta').
  - Unix, including macOS
    - `curl https://get.volta.sh | bash`
  - Windows
    - `winget install Volta.Volta`
    - You may need to enable _Developer Mode_. See the guide for instruction and why you need it.
- Java version 11. The recommend way to setup Java is to use [**jenv**](https://github.com/jenv/jenv).
  - MacOS

    ```bash
    brew install jenv
    ```

- Ruby version 3.
  - MacOS

    ```bash
    brew install rbenv ruby-build
    rbenv install 3.1.3
    rbenv global 3.1.3
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
    echo 'eval "$(rbenv init -)"' >> ~/.zshrc
    ```

## Setup

Install packages

```bash
yarn
volta install fsh-sushi
gem install jekyll
```

To get started, run:

```bash
./_updatePublisher.sh
```

Then use this command to to generate the IG.

```bash
./_genounce.sh
```

The IG will be generated as a static site at the /output folder. To serve the static site just run the following,

```bash
yarn serve
```

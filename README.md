# Flutter Cross Platform with CI/CD

Flutter cross-platform template with CI/CD for automatic releases and GitHub Pages deployment.

<details>
  <summary>Screenshots</summary>

<div align="center">
  <a href="https://brunodavi.github.io/flutter_cross_platform_ci_cd/">
    <img src="https://github.com/user-attachments/assets/11999f08-700e-4238-919f-2e27a18fc5b1" alt="Desktop Page">
    <img src="https://github.com/user-attachments/assets/421aae2b-a483-4422-a7d4-124ecba25ef0" alt="Phone Page 1" width="49%">
    <img src="https://github.com/user-attachments/assets/4f815bd3-2a8d-4a74-b2f4-cf0431ca7763" alt="Phone Page 2" width="49%">
  </a>
</div>

</details>

## Setup on cli

```bash
# Clonar o repositório do template como my_app
git clone https://github.com/brunodavi/flutter_cross_platform_ci_cd my_app

# Navegar para o diretório do projeto
cd my_app

# Adicionar o repositório remoto
git remote add origin https://github.com/brunodavi/flutter_cross_platform_ci_cd

# Fazer commit das alterações iniciais
git add .
git commit -m "initial setup"

# Push para o repositório no GitHub
git push -u origin main

# Configurar o GitHub Pages (no repositório, vá para Settings > Pages e selecione a branch 'gh-pages')

# Renomear arquivos com o nome do app
```

## Workflows

### Releases
Create releases and publish from CI/CD at each new tag
- [ ] Android
- [ ] Windows
- [ ] Linux AppImage
- [ ] MacOS
- [ ] IOS

### Web
Deploy application in GitHub Pages

### Test
Tests in application

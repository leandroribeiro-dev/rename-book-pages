# 📚 Rename Book Pages

Script em Bash para renomear automaticamente imagens digitalizadas de livros, organizando páginas em sequência com identificação de frente e verso.

---

## 🧠 Funcionalidade

O script percorre arquivos `.jpg` e renomeia no formato:

Livro <numero> - Folha <numero>.jpg
Livro <numero> - Folha <numero>v.jpg

- Numeração automática ✔  
- Controle de frente/verso ✔  
- Backup dos arquivos originais ✔  

---

## ⚙️ Como usar

### 1. Pré-requisitos
- Sistema Linux ou WSL  
- Bash  

### 2. Execução

```bash
chmod +x RenomearLivros.sh
./RenomearLivros.sh [numero_do_livro] [folha_inicial]
```

Exemplo:
``` bash
./RenomearLivros.sh 598 1
```

🎯 Objetivo

Automatizar o processo de organização de páginas digitalizadas, reduzindo erros manuais e aumentando a produtividade.

👨‍💻 Autor

Leandro Ribeiro dos Santos

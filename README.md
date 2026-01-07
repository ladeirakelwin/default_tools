# Documentação

## Escopo
Repositório template

## Padrão de nome dos commits
- **build**: Alterações que afetam o sistema de build ou dependências externas (exemplos de escopo: gulp, broccoli, npm)

- **ci**: Alterações nos arquivos e scripts de configuração de Integração Contínua (CI) (exemplos de escopo: Circle, BrowserStack, SauceLabs)

- **docs**: Alterações apenas na documentação

- **feat**: Uma nova funcionalidade

- **fix**: Correção de um bug

- **perf**: Alteração de código que melhora o desempenho

- **refactor**: Alteração de código que não corrige bug nem adiciona funcionalidade

- **style**: Alterações que não afetam o significado do código (espaços em branco, formatação, ponto e vírgula ausente, etc.)

- **test**: Adição de testes que estavam faltando ou correção de testes existentes

## Como Commitar
Execute ```make gc``` ou ```cz commit``` para utilizar o commitizen para fazer seu commmit ou siga o padrão a seguir caso faça sem commitizen:
```
<tipo>(classe ou arquivo): assunto <- Obrigatório
<linha em branco>
<corpo>
<linha em branco>
<rodapé>
``` 

Exemplos:
```
docs(README): criando readme.md

feat: criando class x

fix: corrigindo erro y
```

## Padrão de nome das branchs

- **main**: O branch principal de desenvolvimento (por exemplo, main, master ou development) 
- **feature/**: Para novos recursos (por exemplo, feature/add-login-page) 
- **bugfix/**: Para correções de bugs (por exemplo, bugfix/fix-header-bug) 
- **hotfix/**: Para correções urgentes (por exemplo, hotfix/patch de segurança) 
- **release/**: Para ramificações que preparam uma versão que a compatibilidade com a anterior (por exemplo, release/v1.2.0) 
- **chore/**: para tarefas não relacionadas a código, como dependências, atualizações de documentos (por exemplo, chore/update-dependencies)

    ### Restrições
    - **Use letras minúsculas, hifens e pontos**: sempre use letras minúsculas (a-z), números (0-9) e hifens (-) para separar palavras. Evite caracteres especiais, sublinhados ou espaços. Para ramificações de lançamento, pontos (.) podem ser usados ​​na descrição para representar números de versão (por exemplo, release/v1.2.0). 
    - **Sem hífens ou pontos consecutivos, iniciais ou finais**: certifique-se de que hífens e pontos não apareçam consecutivamente (por exemplo, feature/new--login, release/v1.-2.0), nem no início ou no final da descrição (por exemplo, feature/-new-login, release/v1.2.0.). 
    - **Mantenha-o claro e conciso**: O nome da filial deve ser descritivo, porém conciso, indicando claramente o propósito do trabalho. 
    - **Incluir números de tíquete**: se aplicável, inclua o número do tíquete de sua ferramenta de gerenciamento de projetos para facilitar o rastreamento. Por exemplo, para um ticket issue-123, o nome da filial poderia ser feature/issue-123-new-login.

## Fontes dos padrões
Padrão de branch
- https://conventional-branch.github.io/

Padrão de commit(Angular Convention)
- https://gist.github.com/pmutua/7008c22908f89eb8bd21b36e4f92b04f

Ferramenta que aplica o padrão dos commit
- https://pypi.org/project/commitizen/4.4.0/
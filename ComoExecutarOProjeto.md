## 🚀 Como executar o projeto

### Pré-requisitos

- Java JDK instalado
- Eclipse IDE com suporte a Web Projects
- Servidor Apache Tomcat 10.0 configurado no Eclipse
- MySQL Server instalado
- Navegador web

### Passos

1. **Clone ou baixe o repositório:**

2. **Importe o projeto para o Eclipse:**
- `File > Import > Existing Projects into Workspace`
- Selecione a pasta do projeto

3. **Configure o Tomcat no Eclipse**, se ainda não tiver feito:
- `Window > Preferences > Server > Runtime Environments`
- Adicione o Tomcat 10.0 e configure

4. **Configure o banco de dados MySQL:**
- Crie o banco com o script `.sql` fornecido
- Atualize os dados de conexão no seu código (`UsuarioBanco`, `Conexao`, etc.)

5. **Execute o projeto com o Tomcat**
- Clique com o botão direito no projeto > `Run As > Run on Server`

6. **Acesse o projeto via navegador:**
`http://localhost:8080/NOME_DO_SEU_PROJETO/`

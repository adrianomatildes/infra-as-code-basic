## Estrutura Básica de Rede como Código na AWS

Este repositório contém um exemplo de estrutura básica de rede implementada como código na AWS. Utilizando a prática de infraestrutura como código, a configuração da rede é automatizada e gerenciada por meio do Terraform. A estrutura inclui uma VPC (Virtual Private Cloud), duas subnets (pública e privada), um Internet Gateway, um NAT Gateway e um Elastic IP.

**Ação:**

Para começar a utilizar essa estrutura básica de rede na AWS como código, siga as etapas abaixo:

1. Faça o clone deste repositório em sua máquina local.

2. Certifique-se de ter o Terraform instalado em sua máquina. Caso contrário, você pode baixá-lo em [https://www.terraform.io/downloads.html](https://www.terraform.io/downloads.html) e seguir as instruções de instalação específicas para o seu sistema operacional.

3. Ajuste as variáveis no arquivo `variables.tf` de acordo com suas necessidades. Essas variáveis incluem o CIDR block da VPC, os CIDR blocks das subnets, as zonas de disponibilidade, entre outros.

4. Execute o comando `terraform init` para inicializar o Terraform no diretório do projeto.

5. Em seguida, execute o comando `terraform plan` para visualizar o plano de execução e verificar se todas as configurações estão corretas.

6. Se estiver satisfeito com o plano, execute o comando `terraform apply` para criar a infraestrutura na AWS.

7. Após a conclusão da criação da infraestrutura, você terá os seguintes recursos disponíveis:
   - Uma VPC (Virtual Private Cloud) com o CIDR block definido.
   - Duas subnets, uma pública e uma privada, com os CIDR blocks definidos.
   - Um Internet Gateway associado à VPC.
   - Um NAT Gateway associado à subnet pública.
   - Um Elastic IP associado ao NAT Gateway.
   - Uma tabela de roteamento associada à VPC.
   - Uma tabela de roteamento associada à subnet pública.

8. Você pode personalizar e estender essa estrutura básica de acordo com suas necessidades. Por exemplo, adicione mais subnets, ajuste as regras de roteamento ou inclua outros recursos da AWS para construir uma infraestrutura mais complexa.

**Conclusão:**

Utilizando infraestrutura como código, você pode automatizar e gerenciar sua estrutura de rede na AWS de forma eficiente e escalável. Essa estrutura básica de rede como código pode servir como ponto de partida para seus projetos, permitindo que você adapte e expanda conforme necessário. Explore as possibilidades da infraestrutura como código e aproveite os benefícios de uma infraestrutura automatizada, controlada e versionada.
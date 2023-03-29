#!/bin/bash

#######################################################################################
# Autora: Annanda Santos
# Email da autora: annandasants@gmail.com
# Descrição: Validação de estrutura geral de aplicações que utilzam as pipelines CI/CD
# Repositório Remoto:
# Parâmetros: N/A
# Exemplo de uso:
# ./validation-directory-structure.sh
#######################################################################################

#Imports

#Variáveis

#Funções
#--------------------------------------------------------------#
main() {
}
devsecopsDirectoryValidation() {
    [! -d "${bamboo_build_working_directory}devsecops"] && echo "Diretório '/devsecops' não encontrado"
    devsecopsDirectoryEstructure

}

devsecopsDirectoryEstructure() {

    [! -f "{bamboo_build_working_directory}/devsecops/config-yaml"] && echo "Arquivo '/devsecops/config-yaml' não encontrado"
}
dockerDirectoryValidation() {
    [! -d "{bamboo_build_working_directory}/docker"] && echo "Diretório 'docker' não encontrado"
    dockerDirectoryEstructureValidation
}

dockerDirectoryEstructureValidation() {
    [! -f "{bamboo_build_working_directory}/docker"] && echo "Arquivo '/docker/Dockerfile' não encontrado"

}

externalFilesDirectoryValidation() {

[! -d "{bamboo_build_working_directory}/externalfiles"] && echo "Diretorio '/externalfiles' não encontrado"

}
#Execução

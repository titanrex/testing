#!/bin/bash

# Función para ejecutar el comando "terraform plan" en un entorno específico.
tf_plan() {
  local environment=$1
  echo "*************** TERRAFORM PLAN *******************"
  echo "      Environment: ${environment}"
  echo "**************************************************"
  cd "environments/${environment}" || exit
  terraform init
  terraform plan
  cd ..
}

# Función para ejecutar el comando "terraform apply" en un entorno específico.
tf_apply() {
  local environment=$1
  echo "*************** TERRAFORM APPLY ******************"
  echo "      Environment: ${environment}"
  echo "**************************************************"
  cd "environments/${environment}" || exit
  terraform apply
  cd ..
}

# Función para hacer un "push" de los cambios a un repositorio remoto en AWS CodeCommit.
push_changes() {
  local environment=$1
  echo "*************** PUSH CHANGES *********************"
  echo "      Environment: ${environment}"
  echo "**************************************************"
  cd "environments/${environment}" || exit
  git add .
  git commit -m "Update infrastructure"
  git push --set-upstream origin plan
  cd ..
}

# Verificación de los argumentos de línea de comandos.
if [[ $# -lt 2 ]]; then
  echo "Usage: ./tf-wrapper.sh <action> <environment>"
  echo "Actions: plan, dev, qa, push"
  exit 1
fi

action=$1
environment=$2

# Ejecutar la acción correspondiente según los argumentos proporcionados.
case "$action" in
  "plan")
    tf_plan "$environment"
    ;;
  "dev")
    tf_plan "dev"
    tf_apply "dev"
    push_changes "dev"
    cd "environments/dev" || exit
    git checkout dev
    git merge plan
    git push --set-upstream origin dev
    cd ../..
    ;;
  "qa")
    tf_plan "qa"
    tf_apply "qa"
    push_changes "qa"
    cd "environments/qa" || exit
    git checkout qa
    git merge plan
    git push --set-upstream origin qa
    cd ../..
    ;;
  "push")
    push_changes "$environment"
    ;;
  *)
    echo "Invalid action. Actions: plan, dev, qa, push"
    exit 1
    ;;
esac
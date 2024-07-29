#!/usr/bin/env bash
# If there's already a kubeconfig file in ~/.kube/config it will import that too and all the contexts
DEFAULT_KUBECONFIG_FILE="$HOME/.kube/config"
if test -f "${DEFAULT_KUBECONFIG_FILE}"; then
  export KUBECONFIG="$DEFAULT_KUBECONFIG_FILE"
fi

# Your additional kubeconfig files should be inside ~/.kube/config-files
ADD_KUBECONFIG_FILES="$HOME/.kube/config-files"
mkdir -p "${ADD_KUBECONFIG_FILES}"
while IFS= read -r -d '' kubeconfigFile; do
    export KUBECONFIG="$kubeconfigFile:$KUBECONFIG"
done < <(find "${ADD_KUBECONFIG_FILES}" -type f \( -name "*.yml" -o -name "*.yaml" \) -print0)

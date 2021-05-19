#!/bin/bash
# run docker command to check kustomize with proper folders mounted
# on mac, requires gsed from brew. sed from normal linux would work.
# run from a directory under kustomize containing a kustomization.yaml
# copy to your ~/bin/ folder for ease of use
d=`echo ${PWD} | gsed 's/.*\/kustomize\/\(.*\)/\1/'`
kustomize_folder=` echo ${PWD} | gsed 's/\(.*\/kustomize\/\).*/\1/' `
docker run --rm --entrypoint "" -v ${kustomize_folder}:/home/flux docker.io/fluxcd/flux:1.22.2 bash -c "cd $d; kustomize build ." 

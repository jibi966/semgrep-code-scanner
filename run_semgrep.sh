#!/bin/bash

repos=(
    "https://github.com/jibi966/reimagined-goggles.git"
)

clone_dir="/app/repos"
results_dir="/app/results"

mkdir -p "$clone_dir"
mkdir -p "$results_dir"

for repo in "${repos[@]}"; do
    repo_name=$(basename "$repo" .git)
    repo_path="$clone_dir/$repo_name"
    result_file="$results_dir/${repo_name}_semgrep_results.json"

    git clone "$repo" "$repo_path"
    
    if [ $? -ne 0 ]; then
        echo "Failed to clone $repo"
        continue
    fi

    cd "$repo_path" || {
        echo "Failed to navigate to $repo_path"
        continue
    }

    semgrep --config=auto --json > "$result_file"

    cd /app
done

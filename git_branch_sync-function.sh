git_branch_sync() {
    local help_msg="git_branch_sync: remove local branches whose remote has been deleted.
Usage:
  git_branch_sync                Show branches that would be deleted (dry run).
  git_branch_sync --clean        Actually delete those branches.
  git_branch_sync -h|--help|-?   Show this help message."

    case "$1" in
        -h|--help|-\?)
            echo "$help_msg"
            return 0
            ;;
        "")
            git fetch --prune
            echo "The following local branches have no remote:"
            git branch -vv | grep ': gone]' | awk '{print "  "$1}'
            echo
            echo "Run 'git_branch_sync --clean' to delete them."
            return 0
            ;;
        --clean)
            git fetch --prune
            for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do
                echo "Deleting branch: $branch"
                git branch -D "$branch"
            done
            return 0
            ;;
        *)
            echo "Unknown option: $1"
            echo "$help_msg"
            return 1
            ;;
    esac
}

# Aliases
# Create Git Branch
gsw!()                  { git switch -c $1 }

# Pull Git Branch
gbp()                   { git fetch origin && git checkout $1 && git merge --ff-only @{upstream} }


# Smart pushing of branches
currbranch()            { git symbolic-ref --short HEAD; }
alias gps!='            git push --set-upstream origin `currbranch`'
has_upstream_branch()   { git rev-parse --abbrev-ref --symbolic-full-name @{u} >/dev/null 2>/dev/null; }
gps()                   { has_upstream_branch && git push || gps!; }

# Create PR from Command Line
pr()                    { gh pr create --web }

# Shopify Theme Serve
sts()                   { shopify theme serve }

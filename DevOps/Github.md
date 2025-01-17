# Github and Git
GitHub is a cloud-based hosting service that helps to manage git repositories. Git is a version control system. 

Configuring the SSH keys, which are important the access credential for the SSH network protocol. 
This allows to you connect to remote repository. No need to type password
```
Create a new key in your local machine
cd .ssh/
ls -ltr
copy the content in public key id_rsa.pub and paste in github add key section
go to settings -> ssh and GPG keys (you can add keys by clicking the new keys)
```
How to generate a new key
```
ssh-keygen -t rsa -b 4096 will generate ssh key for 4096 bit
```
Configuring your /home/naveen/.gitconfig and /my-repository/.git. For example, user id, password
```
git config
git config --global user.email navee...@gmail.com
git config --global user.name  Naveen.....
```
Setting up a new branch
```
git branch new-branch-name
```
Status checks
```
git branch -v
git status
```
restore the files
```
git checkout filename
git restore filename
```
Update the current code
```
git pull
```
Checking out the created branch or master
```
git checkout new-branch-name
git checkout master
```
coping a specific commit from one branch to the interested branch
```
git checkout interested-branch
git cherrypick SHA-values-of-commit
```
Git commit history
```
git log
```
Squash and rebase
## first way (A)
```
git rebase master
git rebase --continue
git log --oneline -10
git reset --soft HEAD~3 && git commit
git push --force
```
## second way (J)
```
git branch backup/current-branch-name
git checkout master or interested-branch-name
git pull
git status
in case if there is an Unmerged paths: git reset --hard origin/interested-branch-name or origin/master
git status
git checkout my-branch-name
git rebase master or interested-branch-name (not origin)
git abort
git checkout master or interested-branch-name (not origin)
git cherry-pick
git cherry-pick SHA-values-of-commit
git log
git checkout my-branch-name
git reset --hard master or interested-branch-name (not origin)
git log
git checkout master or interested-branch-name (not origin)
git reset --hard origin/master or interested-branch-name
git log
git checkout my-branch-name
git push --force-with-lease
```
squash commits
```
git rebase -i master
do : first commit to reword (top) and other all to squash (below)
git rebase --continue
git log
```
Delete a specific commit 
```
git rebase -i master
do : delete the specific commit instead of squash or pick or other keywords. This means delete the entire line
git push --force-with-lease
```
Delete a branch 
```
git branch -d unwanted-branch-name
-d option will delete the branch locally and -D will force the branch to delete locally
git push
Deleting a branch remotely. Use the following command
git push origin --delete unwanted-branch-name
```

To avoid from the following errors: "smudge filter lfs failed" or "external filter 'git-lfs filter-process' failed"
```
git lfs install --skip-smudge
git clone repository-name
git lfs pull
git lfs install --force
```
Bookmark commits. Release different versions
```
git tag
```
How to clean the untracked files
```
git clean
```
git reset is used to updating the HEAD inorder to add or remove commits from the branch
```
git reset HEAD is for undoing uncommitted changes
git reflog is rescue to git reset
```
reverse the changes made in commits
git revert will make a new commit that reverts the changes made by other commits.
```
git revert commit id
git revert HEAD
```
HEAD is a pointer
```
cat .git/HEAD
HEAD in git is used to keep track tip of the branch. When new commits are made, the pointer  point to the new commit.
git checkout specific commit will make the head points to specific commit. not the new commit anymore. 
```
How to igonre or exclude files For example, binaries, inputs of large size, external libraries 
```
go to root of your local git (repository-name/.gitigonre) and create gitignore file
touch .gitignore
inside the file
# ignore ALL .log .xyz, .o files
*.log, .xyz, .o
# ignore ALL files in ANY directory named temp
temp/
# igonore all files except test.xyz
*.xyz
!test.xyz
```
To see the git root directory or branch hsa values 
```
git rev-parse --show-toplevel
git rev-parse --git-dir
git rev-parse --branches
```
When someone updated your branch and it is available in cloud, Wanna update the head pointer to latest one and pull the updates
```
git checkout master
git pull -> will update the master from origin
git reset --hard origin/branch-name -> No need to update the code. Just update the head where it points to.
git pull  
```
error: You have not concluded your merge (MERGE_HEAD exists)
```
git merge --abort
git fetch --all
git branch -v
git reset --hard origin/branch-name
git pull
```
RPC error: TLS connection
```
git clone --depth 1 git-link
cd git-name
git fetch --unshallow
```
How to add note and warning in Github Readme.md file 

> __Note__  

> __Warning__
 
:exclamation:  :warning:  :boom: :memo: :point_up: :zap: 

| :warning: WARNING          |
|:---------------------------|
| content   |

| :boom: DANGER              |
|:---------------------------|
| content |

| :memo:        | content       |
|---------------|:------------------------|

| :point_up:    | content |
|---------------|:------------------------|

| :exclamation:  content   |
|-----------------------------------------|

| :zap:        content   |
|-----------------------------------------|



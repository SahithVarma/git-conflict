# git-conflict
What is a Conflict in Git?
A Git conflict occurs when multiple changes are made to the same part of a file in different branches, and Git is unable to automatically merge them. This typically happens when two or more developers modify the same line(s) of a file, and Git cannot determine which change to keep.

When Do Conflicts Occur?
During a Merge (git merge <branch-name>)
When Rebasing (git rebase <branch-name>)
During a Pull (git pull origin main)
When Applying a Stash (git stash pop)
During a Cherry-pick (git cherry-pick <commit-id>)

Example of a Git Conflict:

Let's say we have a file example.txt with this content:
Hello, world!

Scenario:
Branch A (main): 
Changes example.txt to:
Hello, world! Welcome to Git.

Branch B (feature-branch): 
Changes example.txt to:
Hello, world! This is a Git tutorial.

Now, if you try to merge (feature-branch) into (main), Git doesn't know which change to keep.

Resolving a Conflict:

When a conflict occurs, Git marks the conflicting section in the file:
<<<<<<< HEAD
Hello, world! Welcome to Git.
=======
Hello, world! This is a Git tutorial.
>>>>>>> feature-branch

Steps to Resolve a Conflict:

Open the conflicted file in an editor.
Manually edit the content to decide what to keep.
Example resolution:
Hello, world! Welcome to Git and Git tutorial.

Stage the resolved file:
git add example.txt

Commit the resolution:
git commit -m "Resolved merge conflict in example.txt"


Preventing Conflicts:

Pull latest changes before starting work:
git pull origin main

Use branches efficiently to isolate changes.
Communicate with teammates to avoid modifying the same files.
Use git rebase instead of git merge to keep history clean.



 



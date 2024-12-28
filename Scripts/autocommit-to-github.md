# Automating Daily GitHub Pushes

Simple steps for automating daily commit & pushes from local repo to GitHub

### 1. Create the Shell Script

Write a shell script (push_to_github.sh) to automate the Git operations

```bash
#!/bin/bash

# Navigate to your local repository
cd /path/to/your/repository

# Add all changes
git add .

# Commit changes with a message (including timestamp)
commit_message="Auto-commit: $(date '+%Y-%m-%d %H:%M:%S')"
git commit -m "$commit_message"

# Push changes to the repository
git push origin main
```

### 2. Make it executable

Save the script in a convenient location and run

```bash
chmod +x push_to_github.sh
```

After running this command, The file can now be executed directly as a program or script without needing to specify the interpreter explicitly.

```bash
# Before: you need to run script like this
bash push_to_github.sh

# After: now you can simple do this
./push_to_github.sh
```

### 3. Verify if that worked

Check for the permissions of the file using:

```bash
ls -l push_to_github.sh

# before running the chmod the output would look like this
-rw-r--r--  1 user group 1234 Dec 28 12:00 push_to_github.sh

# after running chmod it should look like this
-rwxr-xr-x  1 user group 1234 Dec 28 12:00 push_to_github.sh
```

- chmod only changes permissions; it doesn't alter the script's content.
- Ensure that the script has a valid shebang line `(e.g., #!/bin/bash)` at the top so that the OS knows which interpreter to use when executing it.

### 4. Final Step (Scheduling the Script)

For linux, use **cron**
For MacOS, we can use **launchd**

For Windows, we use the (Task Scheduler App - default comes pre-installed) the steps include:

- Open Task Scheduler and create a new task.
- Set the trigger to "Daily" at (Time).
- Set the action to "Start a program" and point it to bash.exe (from Git Bash or WSL).
- Add the script path as an argument:

```bash
-c "/c/Users/aakas/Desktop/til/push_to_github.sh"
```

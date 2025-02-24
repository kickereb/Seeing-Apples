# Bash Cheetsheet

- [Folder Stats on Terminal](#Folder%20Stats%20on%20Terminal)
- [No Hangup (nohup)](#nohup)
- [Vim](#vim)
# Folder Stats on Terminal

### File Size
```bash
 ls -lh filename.zip
```

### **1. Total Size of a Folder**
```bash
du -sh folder_name
```
- `-s` → Summary (doesn’t list individual files)
- `-h` → Human-readable format (KB, MB, GB)

### **2. Size of Each File in a Folder**
```bash
du -ah folder_name | sort -h
```
- `-a` → Include files
- `sort -h` → Sort in human-readable format

### **3. Count Number of Files in a Folder**
```bash
find folder_name -type f | wc -l
```
- `-type f` → Only files (not directories)
- `wc -l` → Count lines (each file is one line)

### **4. Count Number of Subdirectories**
```bash
find folder_name -type d | wc -l
```
- `-type d` → Only directories

### **5. List Largest Files in a Folder**
```bash
ls -lhS folder_name | head -10
```
- `-l` → Detailed list
- `-h` → Human-readable size
- `-S` → Sort by size (largest first)
- `head -10` → Show top 10 largest files

### **6. Get Summary of File Types**
```bash
find folder_name -type f | awk -F. '{print $NF}' | sort | uniq -c | sort -nr
```
- Extracts file extensions and counts them.

### **7. Find the Most Recently Modified Files**
```bash
ls -lt folder_name | head -10
```
- `-t` → Sort by modification time
- `head -10` → Show the latest 10 files


### Extraction
Here is a **Markdown** list of the commands for extracting `.zip` and `.tar.gz` files in the background using `nohup`:

```bash
nohup unzip filename.zip > extract.log 2>&1 &
```
- Extracts `filename.zip` in the **current directory**.
- Logs output to `extract.log`.
- Runs in the background (`&`).

#### Extract a `.tar.gz` File in Background
```bash
nohup tar -xvzf filename.tar.gz > extract.log 2>&1 &
```
- Extracts `filename.tar.gz` in the **current directory**.
- Logs output to `extract.log`.
- Runs in the background (`&`).

#### Check Extraction Progress
```bash
tail -f extract.log
```
# NoHup

1. [Downloading](#downloading)
2. [Extraction](#extraction)
### Downloading
You can use `nohup` to keep the download running even if your SSH session disconnects.

```bash
nohup wget -c https://some_file_url.zip -O AwA2-data.zip > download.log 2>&1 &
```
 No hup without specific name change
 ```bash
 nohup wget -c https://some_file_url.zip > download.log 2>&1 &
```

### Explanation:
- `nohup` → Keeps the process running even if you log out.
- `wget -c` → Enables resuming the download if it gets interrupted.
- `-O AwA2-data.zip` → Saves the file with a specific name.
- `> download.log 2>&1` → Redirects both standard output and errors to a log file.
- `&` → Runs the process in the background.

### To check the progress:
Run:
```bash
tail -f download.log
```

### To reattach (optional):
Use `jobs -l` to list background jobs and `fg %<job_id>` to bring it to the foreground.

This setup ensures that even if your SSH session disconnects, the download will continue in the background. 

If you want to keep the original filename from the server, you can use:

`nohup wget -c https://some_file_url.zip > download.log 2>&1 &`

# Vim
Using Vim to Edit Files
## Opening and Creating Files

To open or create a file in Vim, use the following command in the terminal:

```bash
vim filename
```

If the file exists, it will be opened; otherwise, a new file will be created.

## Vim Modes

Vim operates in different modes, each serving a specific purpose:

- **Normal Mode:** This is the default mode when Vim starts. You can navigate and run commands in this mode. Press `Esc` to enter Normal mode from any other mode.
- **Insert Mode:** Used for editing the contents of the file. Press `i` to enter Insert mode from Normal mode. Press `Esc` to return to Normal mode.
- **Visual Mode:** Used for selecting text. Press `v` to enter Visual mode from Normal mode.
- **Command-Line Mode:** Used for executing commands. Press `:` to enter Command-Line mode from Normal mode.

## Editing a File

To edit a file, follow these steps:

1. Open the file using Vim:
   ```bash
   vim filename
   ```
2. Switch to Insert mode by pressing `i`.
3. Make your changes to the file.
4. Press `Esc` to return to Normal mode.

## Saving and Exiting

To save the changes and exit Vim, use the following commands in Command-Line mode:

- **Save the file:** `:w`
- **Quit Vim:** `:q`
- **Save and quit:** `:wq`
- **Quit without saving:** `:q!`

## Common Editing Operations

- **Cut a Line:** Place the cursor on the line and press `dd`.
- **Copy a Line:** Place the cursor on the line and press `yy`.
- **Paste a Line:** Place the cursor where you want to paste and press `p`.
- **Undo:** Press `u` in Normal mode.
- **Redo:** Press `Ctrl + R` in Normal mode.

## Searching and Replacing Text

- To search for a pattern in the file, use the following command in Command-Line mode:
  ```bash
  /pattern
  ```
- To replace text, use the following command:
  ```bash
  :%s/old_text/new_text/g
  ```
  This command replaces all occurrences of `old_text` with `new_text` in the entire file.

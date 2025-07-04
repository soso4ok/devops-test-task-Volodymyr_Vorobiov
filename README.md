# Hello Script Assignment

## Description

This repository contains a bash script automation project with GitHub Actions CI/CD integration. The project demonstrates:

- **Bash scripting** with functions for greeting, timestamp generation, and file counting
- **GitHub Actions workflow** for automated testing and validation
- **Artifact uploading** to preserve script outputs
- **Manual workflow triggering** with custom parameters

The main script (`scripts/hello.sh`) generates log files with timestamps and system information, while the GitHub Actions workflow automatically validates the script's output and uploads the results as downloadable artifacts.

## Build Status

![Hello Script Workflow](https://github.com/soso4ok/devops-test-task-Volodymyr_Vorobiov/workflows/Hello%20Script%20Workflow/badge.svg)

## Project Structure

```
.
├── logs/                           # Generated log files
│   ├── log-20250704_105855.txt
│   ├── log-20250704_105916.txt
│   └── ...
├── scripts/
│   └── hello.sh                    # Main bash script
├── .github/
│   └── workflows/
│       └── workflow.yml            # GitHub Actions workflow
└── README.md
```

## Running the Script Locally

### Prerequisites
- Bash shell (Linux/macOS/WSL)
- Basic command line knowledge

### Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/soso4ok/YOUR_REPO_NAME.git
   cd YOUR_REPO_NAME
   ```

2. **Make the script executable:**
   ```bash
   chmod +x scripts/hello.sh
   ```

3. **Run the script:**
   ```bash
   ./scripts/hello.sh
   ```

4. **Check the generated log file:**
   ```bash
   ls -la logs/
   cat logs/log-*.txt
   ```

### What the Script Does

The script will:
- Display a greeting message
- Show the current date and time
- Count files in the current directory
- Generate a timestamped log file in the `logs/` directory

## Triggering GitHub Actions Workflow

### Automatic Triggers

The workflow runs automatically on:
- **Push** to `main` branch
- **Pull requests** to `main` branch


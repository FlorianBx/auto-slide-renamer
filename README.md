# Incremental Slide Renaming Script

![](https://img.shields.io/badge/version-1.0.0-blue.svg)

This script is designed to rename slide files in a directory incrementally, handling both files with whole numbers and decimal numbers (e.g., `slide10.md`, `slide10.1.md`). The script ensures that all files are renamed sequentially, without conflicts, and logs the changes made during the renaming process.

## Features

- **Incremental Renaming**: The script renames slide files incrementally, starting from `slide001.md`, and continues based on the existing sequence of files.
- **Handling Decimal Numbers**: Files with decimal numbers in their names (e.g., `slide10.1.md`) are seamlessly integrated into the sequence, ensuring no gaps or overlaps in numbering.
- **Logging**: All renaming actions are logged in a file called `rename_log.txt`, providing a detailed record of the changes made.

## How It Works

1. **Initial Setup**:
   - The script starts by resetting the log file (`rename_log.txt`), ensuring it only contains information about the latest run.
   
2. **File Processing**:
   - The script sorts all files in the `slides` directory in natural order, including decimal numbers.
   - It processes each file, renaming it incrementally based on the current index (starting from `slide001.md`).

3. **Renaming**:
   - Each file is renamed to the next number in the sequence, taking care of decimal numbers by assigning them the next available integer in the sequence.
   - The original name and the new name of each file are logged in `rename_log.txt`.

4. **Logging**:
   - The script logs every renaming action to `rename_log.txt`, providing a complete record of all changes made during the run.

## Usage

### Prerequisites

- Ensure you have Bash installed on your system.
- Place all your slide files in a directory named `slides`.

### Running the Script

1. **Download the Script**:
   - Save the script in a file called `rename_incr.sh`.

2. **Make the Script Executable**:
   ```bash
   chmod +x rename_incr.sh
   ```

3. **Execute the Script**:
   ```bash
   ./rename_incr.sh
   ```

4. **Check the Log**:
   - After the script completes, check the `rename_log.txt` file in the same directory to see the details of the renaming process.

### Example Log Output

The log file (`rename_log.txt`) will look something like this:

```plaintext
Renaming Log - Fri Aug 16 15:45:32 CEST 2024
-------------------------------------
Renaming 'slide10.md' to 'slide010.md'
Renaming 'slide10.1.md' to 'slide011.md'
Renaming 'slide10.2.md' to 'slide012.md'
Renaming 'slide11.md' to 'slide013.md'
...
```

## Important Notes

- **Backup**: It is recommended to back up your files before running the script, especially if you are working with important data.
- **Log File**: The log file (`rename_log.txt`) is reset at each run, so make sure to save or review it if you need the information for future reference.

## Troubleshooting

- **File Conflicts**: If the script encounters any issues with file conflicts (e.g., a file already exists with the target name), it will overwrite the file. Consider running the script in a test environment first.
- **Unexpected Results**: If you notice unexpected behavior, verify that all files in the `slides` directory follow the expected naming convention (e.g., `slideX.md`, `slideX.Y.md`).

## Contributing

Feel free to submit pull requests or report issues if you have suggestions for improving the script or its documentation.

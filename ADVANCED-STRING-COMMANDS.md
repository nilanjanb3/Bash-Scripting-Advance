### AWK Command: A Detailed Guide

AWK is a versatile and powerful text processing language used in Unix and Linux environments. It is particularly useful for data extraction and reporting tasks. AWK operates on records (lines) and fields (columns) within structured text files. Here's a detailed guide on using the AWK command with examples:

### Basic Syntax:

The basic syntax of the AWK command is as follows:

```bash
awk 'pattern { action }' file
```

- **Pattern**: It defines a condition that must be met for the associated action to be performed. If omitted, the action is applied to every input record.
- **Action**: It specifies the action to be taken if the pattern is matched. If omitted, the default action is to print the record.

### Examples:

1. **Print Entire File**:
   ```bash
   awk '{ print }' file.txt
   ```

2. **Print Specific Column**:
   ```bash
   awk '{ print $2 }' file.txt
   ```

3. **Print Lines Matching a Pattern**:
   ```bash
   awk '/pattern/ { print }' file.txt
   ```

4. **Print Specific Field of Lines Matching a Pattern**:
   ```bash
   awk '/pattern/ { print $3 }' file.txt
   ```

5. **Print Lines Based on Condition**:
   ```bash
   awk '$1 > 10 { print }' file.txt
   ```

6. **Print Sum of Column**:
   ```bash
   awk '{ sum += $1 } END { print sum }' file.txt
   ```

7. **Print Number of Lines**:
   ```bash
   awk 'END { print NR }' file.txt
   ```

8. **Print Unique Values in a Column**:
   ```bash
   awk '!seen[$1]++' file.txt
   ```

9. **Custom Output Formatting**:
   ```bash
   awk '{ printf "Name: %-10s Age: %d\n", $1, $2 }' file.txt
   ```

10. **Combining AWK with Other Commands**:
    ```bash
    ps aux | awk '$3 > 50 { print $2 }'
    ```

### Built-in Variables:

- **NF**: Number of fields in the current record.
- **NR**: Current record number.
- **$0**: Entire current record.
- **$1, $2, ...**: Individual fields.

### Advanced Features:

- **User-defined Functions**: AWK allows defining custom functions for complex operations.
- **Control Structures**: AWK supports if-else statements and loops for conditional processing.
- **Arrays**: AWK supports associative arrays for advanced data manipulation.

### Common Use Cases:

- **Data Extraction**: AWK is commonly used to extract specific information from log files or structured data.
- **Data Transformation**: It can be used to reformat data into different structures or formats.
- **Reporting**: AWK is often used to generate reports summarizing data.

### Tips for Efficient Usage:

- **Use Field Separator**: Set the field separator (FS) to handle non-space delimited files.
- **Use AWK Scripts**: For complex operations, it's often better to write AWK scripts in separate files.

AWK is a powerful tool for text processing and manipulation in Unix and Linux environments. Understanding its syntax and features can greatly enhance your ability to work with structured data efficiently. Experimenting with AWK commands and incorporating them into your scripts can simplify many text processing tasks.


**The grep Command: A Detailed Guide**

The `grep` command is a powerful tool used for searching text files for lines that match a specified pattern. It is widely used in Unix and Linux environments for various text processing tasks. Here's a detailed guide on using the `grep` command with examples:

### Basic Syntax:

The basic syntax of the `grep` command is as follows:

```bash
grep [options] pattern [file ...]
```

- **Pattern**: It specifies the search pattern or regular expression to match.
- **File**: It specifies the file(s) to search. If not provided, `grep` reads from standard input.

### Examples:

1. **Search for a Pattern in a File**:
   ```bash
   grep "pattern" file.txt
   ```

2. **Search for a Pattern in Multiple Files**:
   ```bash
   grep "pattern" file1.txt file2.txt
   ```

3. **Search Recursively in a Directory**:
   ```bash
   grep "pattern" -r directory/
   ```

4. **Search for a Pattern Ignoring Case**:
   ```bash
   grep -i "pattern" file.txt
   ```

5. **Print Line Numbers with Matching Lines**:
   ```bash
   grep -n "pattern" file.txt
   ```

6. **Print Only Matching Part of Lines**:
   ```bash
   grep -o "pattern" file.txt
   ```

7. **Invert Match (Print Non-matching Lines)**:
   ```bash
   grep -v "pattern" file.txt
   ```

8. **Count Number of Matches**:
   ```bash
   grep -c "pattern" file.txt
   ```

9. **Search for Lines Starting with a Pattern**:
   ```bash
   grep "^pattern" file.txt
   ```

10. **Search for Lines Ending with a Pattern**:
    ```bash
    grep "pattern$" file.txt
    ```

### Regular Expressions:

`grep` supports regular expressions for more complex pattern matching. Here are some examples:

- **`.`**: Matches any single character.
- **`*`**: Matches zero or more occurrences of the previous character.
- **`^`**: Matches the beginning of a line.
- **`$`**: Matches the end of a line.
- **`[ ]`**: Matches any single character within the brackets.
- **`[^ ]`**: Matches any single character not within the brackets.
- **`|`**: Alternation operator (matches either of two alternatives).

### Advanced Usage:

- **Combining with Other Commands**:
  ```bash
  ps aux | grep "process_name"
  ```

- **Using `grep` with Pipes**:
  ```bash
  cat file.txt | grep "pattern"
  ```

- **Using `grep` with Regular Expressions**:
  ```bash
  grep "[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}" file.txt  # Match phone numbers
  ```

### Tips for Efficient Usage:

- **Use Specific Options**: Choose appropriate options (`-i`, `-n`, `-v`, etc.) based on your requirements.
- **Combine with Other Tools**: `grep` can be combined with other Unix tools like `sed`, `awk`, and `cut` for more complex text processing tasks.
- **Understand Regular Expressions**: Regular expressions can greatly enhance the power and flexibility of `grep`.

The `grep` command is an essential tool for text processing and searching in Unix and Linux environments. Understanding its syntax, options, and regular expressions enables efficient text manipulation and pattern matching tasks. Experimenting with `grep` commands on various datasets will help you become proficient in using this versatile tool.


### The sed Command: A Detailed Guide

The `sed` command (short for stream editor) is a powerful text processing tool available in Unix and Linux environments. It is primarily used for performing basic text transformations and editing tasks on input streams (files or data piped from other commands). Here's a detailed guide on using the `sed` command with examples:

### Basic Syntax:

The basic syntax of the `sed` command is as follows:

```bash
sed [options] 'script' file
```

- **Options**: They modify the behavior of the `sed` command. Some common options include `-e` for specifying multiple scripts and `-i` for in-place editing.
- **Script**: It contains one or more commands or instructions for `sed` to execute.
- **File**: It specifies the file(s) to process. If not provided, `sed` reads from standard input.

### Examples:

1. **Print Entire File**:
   ```bash
   sed '' file.txt
   ```

2. **Print Specific Line**:
   ```bash
   sed -n '5p' file.txt  # Print 5th line
   ```

3. **Print Range of Lines**:
   ```bash
   sed -n '10,20p' file.txt  # Print lines 10 to 20
   ```

4. **Print Lines Matching a Pattern**:
   ```bash
   sed -n '/pattern/p' file.txt
   ```

5. **Print Lines Not Matching a Pattern**:
   ```bash
   sed -n '/pattern/!p' file.txt
   ```

6. **Substitute Text in a Line**:
   ```bash
   sed 's/old/new/' file.txt
   ```

7. **Substitute Text Only in Certain Lines**:
   ```bash
   sed '10,20 s/old/new/' file.txt  # Substitute in lines 10 to 20
   ```

8. **Substitute Text Globally in Each Line**:
   ```bash
   sed 's/old/new/g' file.txt
   ```

9. **Delete Lines Matching a Pattern**:
   ```bash
   sed '/pattern/d' file.txt
   ```

10. **Insert Text Before a Matched Line**:
    ```bash
    sed '/pattern/i new_line' file.txt
    ```

11. **Append Text After a Matched Line**:
    ```bash
    sed '/pattern/a new_line' file.txt
    ```

### Advanced Usage:

- **Multiple Commands**:
  ```bash
  sed -e 'command1' -e 'command2' file.txt
  ```

- **In-place Editing (Modify File Directly)**:
  ```bash
  sed -i 's/old/new/' file.txt
  ```

- **Using Regular Expressions**:
  ```bash
  sed 's/[0-9]\+/NUMBER/' file.txt  # Replace numbers with "NUMBER"
  ```

### Tips for Efficient Usage:

- **Use Single Quotes**: Enclose `sed` commands in single quotes to prevent interpretation of special characters by the shell.
- **Understand Regular Expressions**: Regular expressions are fundamental for pattern matching and substitution in `sed`.
- **Backup Files**: When using in-place editing (`-i` option), consider creating backups of files before making changes.

`sed` is a versatile tool for performing various text manipulation tasks, including substitution, deletion, insertion, and printing lines based on patterns. Understanding its syntax, options, and regular expressions empowers users to efficiently process and transform text data. Experimenting with `sed` commands on different datasets is key to mastering its usage in Unix and Linux environments.
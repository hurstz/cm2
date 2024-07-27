import os

def generate_file_tree(dir_path, prefix=""):
    file_tree = ""
    contents = sorted(os.listdir(dir_path))

    # Ignore .git directory
    contents = [item for item in contents if item != ".git"]

    # Separate files and directories
    directories = [d for d in contents if os.path.isdir(os.path.join(dir_path, d))]
    files = [f for f in contents if os.path.isfile(os.path.join(dir_path, f))]

    # Concatenate directories and files
    sorted_contents = directories + files

    pointers = ["├── "] * (len(sorted_contents) - 1) + ["└── "]

    for pointer, path in zip(pointers, sorted_contents):
        full_path = os.path.join(dir_path, path)
        if os.path.isdir(full_path):
            file_tree += f"{prefix}{pointer}{path}/\n"
            file_tree += generate_file_tree(full_path, prefix + ("│ " if pointer == "├── " else "  "))
        else:
            file_tree += f"{prefix}{pointer}{path}\n"

    return file_tree

def main():
    # Set the root directory to one level above where the script is located
    script_dir = os.path.dirname(os.path.abspath(__file__))
    root_dir = os.path.abspath(os.path.join(script_dir, os.pardir))

    # Remove the previous STRUCTURE.md file if it exists
    output_file = os.path.join(root_dir, "STRUCTURE.md")
    if os.path.exists(output_file):
        os.remove(output_file)

    file_tree = "# Project File Structure\n"
    file_tree += "```\n"
    file_tree += generate_file_tree(root_dir)
    file_tree += "```\n"

    with open(output_file, "w") as f:
        f.write(file_tree)

    print(f"{output_file} has been generated.")

if __name__ == "__main__":
    main()

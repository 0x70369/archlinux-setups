# DON'T CHANGE THIS FILE
# You can define your custom configuration by adding/editing files in ~/.config/bashrc

for file in "$HOME"/.config/bashrc/*; do
    [ -f "$file" ] && [ -r "$file" ] && [ -s "$file" ] || continue

    if ! . "$file"; then
        printf 'Failed to load: %s\n' "$file" >&2
    fi
done

# -f checks if $file exists and it's a regular file;
# -r checks if $file is readable;
# -s checks if $file isn't empty;

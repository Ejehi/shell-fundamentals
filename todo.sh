FILE="$HOME/todo.txt"
touch "$FILE"

while true; do
  echo ""
  echo "1) View all tasks"
  echo "2) Add a new task"
  echo "3) Delete a task"
  echo "4) Exit"
  read -p "Choose [1-4]: " opt

  case $opt in
    1) nl "$FILE" ;;
    2) read -p "Task: " task; echo "$task" >> "$FILE" ;;
    3) nl "$FILE"; read -p "Delete number: " num; sed -i "${num}d" "$FILE" ;;
    4) break ;;
    *) echo "Invalid option" ;;
  esac
done
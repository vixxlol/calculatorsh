echo "Welcome! Enter first number."
read -p "> " first

if [[ "$first" =~ ^[0-9]+$ ]]; then
  first=$((first))
else
  echo "Invalid number."
  exit
fi

echo "Great! Enter second number now."
read -p "> " second

if [[ "$second" =~ ^[0-9]+$ ]]; then
  second=$((second))
else
  echo "Invalid number."
  exit
fi

echo "Enter an operator now. (+, -, *, /)"
read -p "> " op

if [[ "$op" == "+" ]]; then
  result=$((first + second))
  echo "$result"
elif [[ "$op" == "-" ]]; then
  result=$((first - second))
  echo "$result"
elif [[ "$op" == "*" ]]; then
  result=$((first * second))
  echo "$result"
elif [[ "$op" == "/" ]]; then
  if [[ "$second" -eq 0 ]]; then
    echo "Cannot divide by zero."
    exit
  else
    result=$((first / second))
    echo "$result"
  fi
else
  echo "Invalid operator."
  exit
fi

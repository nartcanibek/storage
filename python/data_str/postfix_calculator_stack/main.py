def evaluate_postfix(expression):
    stack = []
    tokens = expression.split()
    for token in tokens:
        if token.isdigit():
            stack.append(int(token))
        elif token in ('+', '-', '*', '/'): 
            b = stack.pop()
            a = stack.pop()
            if token == '+':
                stack.append(a + b)
            elif token == '-':
                stack.append(a - b)
            elif token == '*':
                stack.append(a * b)
            elif token == '/':
                stack.append(a / b)
        else:
            raise ValueError(f"Unknown token: {token}")
    if len(stack) != 1:
        raise ValueError("Invalid postfix expression")
    return stack[0]

if __name__ == "__main__":
    expr = input("Enter postfix expression (space separated): ")
    try:
        result = evaluate_postfix(expr)
        print(f"Result: {result}")
    except Exception as e:
        print(f"Error: {e}")

def resolve_tower_of_hanoi(number_of_disks):
    stacks = {'A': [], 'B': [], 'C': []}
    stacks['A'] = list(range(number_of_disks, 0, -1))  # Initialize stack A with disks
    def move_disk(source, target):
        disk = stacks[source].pop()
        stacks[target].append(disk)
        print(f"Move disk {disk} from {source} to {target}")        
    def hanoi(n, source, target, auxiliary):
        if n == 1:
            move_disk(source, target)
        else:
            hanoi(n - 1, source, auxiliary, target)
            move_disk(source, target)
            hanoi(n - 1, auxiliary, target, source)
    hanoi(number_of_disks, 'A', 'C', 'B')           

if __name__ == "__main__":
    try:
        num_disks = int(input("Enter the number of disks: "))
        if num_disks <= 0:
            raise ValueError("Number of disks must be a positive integer.")
        resolve_tower_of_hanoi(num_disks)
    except ValueError as e:
        print(f"Error: {e}")




# Version 1


class StackOne:
    def __init__(self):
        self.items = []

    def push(self, item):
        if len(self.items) == 0:
            return None
        return self.items.pop()

    def peek(self):
        if len(self.items) == 0:
            return None
        return self.items[len(self.items) - 1]

    def size(self):
        return len(self.items)


# Version 2


class StackTwo:
    def __init__(self):
        self.arrows = []

    def push(self, arrow):
        self.arrows.append(arrow)

    def pop(self):
        if not self.is_empty():
            return self.arrows.pop()
        else:
            return None

    def peek(self):
        if not self.is_empty():
            return self.arrows[-1]
        else:
            return None

    def is_empty(self):
        return len(self.arrows) == 0

    def size(self):
        return len(self.arrows)

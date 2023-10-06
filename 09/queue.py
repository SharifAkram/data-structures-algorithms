# Version 1 - boot.dev


class QueueOne:
    def __init__(self):
        self.items = []

    def push(self, item):
        self.items.insert(0, item)

    def pop(self):
        if len(self.items) == 0:
            return None
        temp = self.items[-1]
        del self.items[-1]
        return temp

    def peek(self):
        if len(self.items) == 0:
            return None
        return self.items[-1]

    def size(self):
        return len(self.items)


# Version 2


class QueueTwo:
    def __init__(self):
        self.items = []

    def push(self, item):
        self.items.append(item)

    def pop(self):
        if len(self.items) > 0:
            return self.items.pop(0)
        else:
            return None

    def peek(self):
        if len(self.items) > 0:
            return self.items[0]
        else:
            return None

    def size(self):
        return len(self.items)

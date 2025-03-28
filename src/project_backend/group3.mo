import Buffer "mo:base/Buffer";

actor TodoList {
    var tasks = Buffer.Buffer<Text>(10);

    public func addTask(task: Text) : async Text {
        tasks.add(task);
        return "Task Added";
    };

    public func listTasks() : async [Text] {
        tasks.toArray();
    };

    public func deleteTask(index: Nat) : async Text {
        if (index < tasks.size()) {
            tasks.remove(index);
            return "Task Deleted";
        } else {
            return "Invalid Index";
        };
    };
};
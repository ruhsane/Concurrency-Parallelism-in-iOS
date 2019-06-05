# Concurrency-Parallelism-in-iOS

### When to use Async?
In asynchronous execution by the `.async` method, the method call returns immediately, ordering the task to be done but not waiting for it to finish.

Use `.async` when your app does __*not*__ need to wait until the operation inside the block is finished.

**long-running tasks** such as image/data processing, local or remote data fetching, and other network calls are typically good candidates for running tasks `.async`.


## When to use Sync?

In synchronous execution by `.sync` method, the current thread waits until the task is finished before the method call returns.

Use `.sync` when your app needs to wait until a task is finished.

Example scenarios include:
- to ensure a particular function is not called a second time before its first invocation is finished.
- to wait for an operation inside a block to finish before you can use the data processed by the block.


# Rails Todo App Assessment

Your goal is to write a non-complex rails app to demonstrate what you’ve learned as individuals. 

You have 2 hours for this exercise. It’s timed, and you need to focus to get at least the minimum requirements finished.

Fork, clone, and pull down this repo.

When you are done with at least the minimum requirements, or if the time is up, push your code up, and issue a pull request against the source repo, so we may look at your code and give you feedback.

This is open book and open google, but is not collaborative. You need to prove to yourselves that you can do the basics all on your own.

Demonstrate that you’ve learned basic ruby, rails, and git concepts while working on this exercise.

## Minimum Requirements

1. Build an app, which would allow a visitor to do full CRUD on `Todo` items.
2. You will add a `TodoList` to your schema, where `Todo` items may be added to `TodoList`s via a 1-m relationship.

Note: don’t overthink this. For example: there are no users - the todos are for everyone, not a specific user’s todos. Just get the basics done.

A couple things to keep in mind:

- Use resources for your routes
- Make sure that when you delete a TodoList, the corresponding todos that are part of that list are destroyed as well.

## Bonus

Implement as much of the app as possible as a single page app, with AJAX, and no page refreshes. 
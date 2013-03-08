# Anonymous Wall

We're going to create an anonymous Facebook-style wall &mdash; no user authentication and only a single table.  If you get stuck **move on**.

## Objectives

### Simple Wall

Create a `comments` table with a `body` field and the corresponding `Comment` model.  The body should be required to be at least 20 characters long but no longer than 1000 characters long.

Display a list of comments in reverse chronological order on the homepage &mdash; newest comment first.  At the top of the list of comments, have a single `textarea` field which creates a new comment.

The comment-creation form a list of comments should be center-aligned on the page and `400px` wide.  Separate each individual comment in a sensible way.  On each comment display the body and creation timestamp (formatted sensibly).

Do not use any JavaScript or AJAX.

### Asynchronous Wall

Create a new route which renders the same form, but instead submits it asynchronously.  The server should return the HTML for a new comment to be prepended to the current list of comments (or an error message).

As best you can, re-use partials to avoid repeating yourself.  Ideally 90%+ of the HTML between these two pages should be shared through partials.

### Important!

Please keep both the synchronous and asynchronous forms in your application.  We want to be able to comapre both to each other and also see how well you work with layouts, views, and partials.

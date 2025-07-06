# Notes App

This app is built using [Ruby on Rails](https://rubyonrails.org/), and was built as part of a technical test for a job interview process.

### Installation

Ruby and Rails must be installed for this application to work - I followed the [official guide](https://guides.rubyonrails.org/install_ruby_on_rails.html).

### Development process

**Time taken**: 2 hours / 2 hours (time recommended by test setter)

App features implemented in given timeframe (⭐ - extra functionality implemented):
- ✅ Users can save a list of notes.
    - ⭐ Deleting notes is also possible.
- ✅ Each note is in Markdown format (user can enter content as Markdown, e.g. input `# ` before a character to create a heading).
- ✅ Each note has a front-end preview of the formatted Markdown before saving.
    - A `Show Markdown Button` can be clicked to show this preview.
- ✅ Test coverage (optional, but encouraged to do as part of test).
    - Only testing for DB interactions, no integration or E2E testing.

**Console commands used**

Create DB for storing notes and run the migration:
```
bin/rails generate model Note title:string content:text
bin/rails db:migrate
```

Implement controllers & actions for the CRUD URLs (defined in `routes.rb`):
```
bin/rails generate controller Notes index --skip-routes
```

After adding `gem redcarpet` to display formatted Markdown text:
```
bundle install
```

**General comments about development process**: I installed `Redcarpet` to display the note content in Markdown form when viewing the note (e.g. `notes/4`), and imported the `Marked` JS package and used an inline script on the note editing form to allow a Markdown preview of the text area content to be shown.

Features I would have implemented had I been given more time:
- When opening the edit page for a note, show the Markdown preview without needing to click the button. 
- Show a real time Markdown preview (i.e. when typing) of a new or edited note. 
- Account functionality / notes specific for particular users (e.g. `user 1` and `user 2` each have their own set of notes).
- More comprehensive test coverage (e.g. integration / E2E testing).

### Local Development

To run the code, start the dev server:
```bash
bin/rails server
```

And open http://localhost:3000. `bin/rails` ensures this application's version of Rails is used.

To stop the dev server, press `Ctrl` + `C` in the terminal.

### Tests

Test coverage has been added to this project. To run the entire test suite, use the following command:
```bash
bin/rails test
```

Alternatively, to run an individual test file, use the following command:
```bash
bin/rails test filename
```
Where valid `filename`s are:
- `test/models/note_test.rb`

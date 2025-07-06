# Notes App

This app is built using [Ruby on Rails](https://rubyonrails.org/), and was built as part of a technical test for a job interview process.

### Installation

Ruby and Rails must be installed for this application to work - I followed the [official guide](https://guides.rubyonrails.org/install_ruby_on_rails.html).

### Development process

**Time taken**: ... / 2 hours (time given by test setter)

This app was heavily inspired by the [Getting Started with Rails](https://guides.rubyonrails.org/getting_started.html) tutorial, which I finished before receiving this technical test.

App features implemented in given timeframe (🟠 - to be implemented, ⭐ - extra functionality implemented):
- 🟠 Users can save a list of notes.
- 🟠 Each note is in Markdown format.
- 🟠 Each note has a front-end preview of the formatted Markdown before saving.
- 🟠 Test coverage (optional, but encouraged to do as part of test).

**Console commands used**:
...

**General comments about development process**: ...

Features I would have implemented had I been given more time:
- ...

### Local Development

To run the code, start the dev server:
```bash
bin/rails server
```

And open http://localhost:3000. `bin/rails` ensures this application's version of Rails is used.

To stop the dev server, press `Ctrl` + `C` in the terminal.

If you wish to use the console, open another terminal and use the following command:
```bash
bin/rails console
```
To exit the console. type `quit` then press `Enter`.

### Tests (TODO add / delete)

...

### Linting

To ensure the CI tests pass for this project, the coding style for this project must be consistent. To check this is the case, use the following command:
```bash
bin/rubocop
```

If there are linting errors, running this command again and adding the `-a` flag in front autocorrects any issues.

### Security

To check for security issues with the application, use the following command:
```bash
bin/brakeman
```

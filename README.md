# Hara API

This is the API/backend. For the client/Frontend visit:

[Hara-Frontend](https://github.com/dclements9/Hara-Frontend)

### Student Portal coming soon!


Hara is a Martial Arts studio management system.

An administrator is able to Create, edit, and delete Users, Lessons, and Challenges

## Installation

**Ruby 2.6.3 is required.**

To get started, 
1. Confirm a `postgresql` server is installed and the service is running.

2. Then run the following commands:
```ruby
bundle install
```
```ruby
rails db:create && rails db:migrate
```

Optional: If you would like to seed sample data run:

```ruby
rails db:seed
```

Sample data includes:

1. 3 Users/Students
2. 4 Lessons (With associated users)
3. 2 Challenges (With associated users)

To view json data: navigate to http://localhost:3001 in a web browser. Or visit: [Hara-Frontend](https://github.com/dclements9/Hara-Frontend)
to fully interact with Hara.

## Development

To release a new version, update the version number in version.rb. Push git commits and tags.
Contributing

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dclements9/Hara-Backend. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License

The project is available as open source under the terms of the MIT License.
Code of Conduct

## Code of Conduct

Everyone interacting in the Hara project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.
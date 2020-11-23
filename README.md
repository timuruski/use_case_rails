# Use Cases

This is a minimal example of a "use case" model hooked into Rails.

A UseCase represents something our app does for our users. While they can be composed they are
not intended to replace services, which provide the tools for building a UseCase.

A UseCase can be run, it returns a regular value when successful and raises a Failure exception
when it fails for an expected case. It's not necessary to wrap every UseCase in a general
rescue, because this prevents normal error handling. You can use the `fails_on` helper to
automatically convert specific exceptions into a Failure.

The base UseCase class is defined in `/app/utils/use_case.rb`, simple examples are in
`/app/use_cases`, showing a minimal use case for creating a user.

# JavaScript Profiler Example

This is an example Angular project with some E2E tests based on Protractor.
It shows how to use the [Teamscale JavaScript profiler](https://docs.teamscale.com/howto/recording-test-coverage-for-javascript/).

## Running E2E tests with coverage recording

1. Run `npm ci` to install dependencies.
2. Launch the collector: `npm run collector`
3. While the collector is running, start another terminal and run the E2E tests with coverage recording enabled: `./e2e-coverage.sh`
4. Stop the collector process (`Ctrl-C`).

The test coverage data will be written to `./coverage.simple`.

To learn how everything works, take a look at the changes made to:

- [e2e-coverage.sh](./e2e-coverage.sh)
- [package.json](./package.json)
- [angular.json](./angular.json)


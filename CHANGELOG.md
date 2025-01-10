# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.19.2] - 2025-01-10

### Added

- create build of zola container(pr [#2])

### Changed

- Configure Renovate(pr [#1])
- ci(circleci)-add release-flag parameter and update job names(pr [#7])
- ci-update check_rebase workflow to include release-flag condition(pr [#8])
- chore(ci)-simplify environment variable setting in CircleCI config(pr [#9])
- chore(circleci)-simplify export command in release workflow steps(pr [#10])
- ci(circleci)-add context to publish_zola_version job in config file(pr [#11])
- ci-add when_use_workspace parameter to CircleCI config(pr [#13])
- ci(circleci)-add rust environment and release commands to config file(pr [#14])

### Fixed

- circleci: correct SEMVER export in release workflow(pr [#15])

### Security

- Dependencies: update rust docker tag to v1.84.0(pr [#5])

[#2]: https://github.com/jerus-org/zola-container/pull/2
[#1]: https://github.com/jerus-org/zola-container/pull/1
[#5]: https://github.com/jerus-org/zola-container/pull/5
[#7]: https://github.com/jerus-org/zola-container/pull/7
[#8]: https://github.com/jerus-org/zola-container/pull/8
[#9]: https://github.com/jerus-org/zola-container/pull/9
[#10]: https://github.com/jerus-org/zola-container/pull/10
[#11]: https://github.com/jerus-org/zola-container/pull/11
[#13]: https://github.com/jerus-org/zola-container/pull/13
[#14]: https://github.com/jerus-org/zola-container/pull/14
[#15]: https://github.com/jerus-org/zola-container/pull/15
[0.19.2]: https://github.com/jerus-org/zola-container/releases/tag/v0.19.2

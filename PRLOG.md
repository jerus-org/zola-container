# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- refactor(circleci)-remove make_github_release and make_release commands(pr [#16])
- refactor(Dockerfile)-optimize build process and change user to circleci(pr [#17])
- Update-renovate-configuration(pr [#53])
- chore-rename CHANGELOG.md to PRLOG.md(pr [#56])

### Fixed

- deps: update dependency toolkit to v2.12.1(pr [#52])
- deps: update rust docker tag to v1.88.0(pr [#54])
- deps: update rust docker tag to v1.89.0(pr [#55])
- deps: update dependency toolkit to v2.13.4(pr [#57])
- deps: update dependency toolkit to v4(pr [#60])
- deps: update rust docker tag to v1.92(pr [#59])
- deps: pin rust docker tag to bf3368a(pr [#61])
- deps: update dependency toolkit to v4.3.0(pr [#62])

### Security

- Dependencies: update dependency toolkit to v2.0.1(pr [#18])
- Dependencies: update dependency toolkit to v2.0.4(pr [#19])
- Dependencies: update rust docker tag to v1.84.1(pr [#20])
- Dependencies: update rust docker tag to v1.85.0(pr [#21])
- Dependencies: update dependency toolkit to v2.0.7(pr [#22])
- Dependencies: update dependency toolkit to v2.0.8(pr [#23])
- Dependencies: update jerusdp/ci-rust docker tag to v1.85(pr [#25])
- Dependencies: update dependency toolkit to v2.1.0(pr [#26])
- Dependencies: update dependency toolkit to v2.2.0(pr [#27])
- Dependencies: update dependency toolkit to v2.4.0(pr [#28])
- Dependencies: update rust docker tag to v1.85.1(pr [#29])
- Dependencies: update dependency toolkit to v2.5.1(pr [#30])
- Dependencies: update rust docker tag to v1.86.0(pr [#31])
- Dependencies: update dependency toolkit to v2.6.0(pr [#32])
- Dependencies: update dependency toolkit to v2.9.1(pr [#34])
- Dependencies: update dependency toolkit to v2.10.3(pr [#35])
- Dependencies: update dependency toolkit to v2.10.5(pr [#37])
- Dependencies: update dependency toolkit to v2.10.6(pr [#38])
- Dependencies: update dependency toolkit to v2.10.7(pr [#39])
- Dependencies: update dependency toolkit to v2.10.9(pr [#40])
- Dependencies: update dependency toolkit to v2.10.10(pr [#44])
- Dependencies: update rust docker tag to v1.87.0(pr [#46])
- Dependencies: update dependency toolkit to v2.11.0(pr [#50])
- Dependencies: update rust docker tag to v1.88.0(pr [#51])

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
[#16]: https://github.com/jerus-org/zola-container/pull/16
[#17]: https://github.com/jerus-org/zola-container/pull/17
[#18]: https://github.com/jerus-org/zola-container/pull/18
[#19]: https://github.com/jerus-org/zola-container/pull/19
[#20]: https://github.com/jerus-org/zola-container/pull/20
[#21]: https://github.com/jerus-org/zola-container/pull/21
[#22]: https://github.com/jerus-org/zola-container/pull/22
[#23]: https://github.com/jerus-org/zola-container/pull/23
[#25]: https://github.com/jerus-org/zola-container/pull/25
[#26]: https://github.com/jerus-org/zola-container/pull/26
[#27]: https://github.com/jerus-org/zola-container/pull/27
[#28]: https://github.com/jerus-org/zola-container/pull/28
[#29]: https://github.com/jerus-org/zola-container/pull/29
[#30]: https://github.com/jerus-org/zola-container/pull/30
[#31]: https://github.com/jerus-org/zola-container/pull/31
[#32]: https://github.com/jerus-org/zola-container/pull/32
[#34]: https://github.com/jerus-org/zola-container/pull/34
[#35]: https://github.com/jerus-org/zola-container/pull/35
[#37]: https://github.com/jerus-org/zola-container/pull/37
[#38]: https://github.com/jerus-org/zola-container/pull/38
[#39]: https://github.com/jerus-org/zola-container/pull/39
[#40]: https://github.com/jerus-org/zola-container/pull/40
[#44]: https://github.com/jerus-org/zola-container/pull/44
[#46]: https://github.com/jerus-org/zola-container/pull/46
[#50]: https://github.com/jerus-org/zola-container/pull/50
[#51]: https://github.com/jerus-org/zola-container/pull/51
[#53]: https://github.com/jerus-org/zola-container/pull/53
[#52]: https://github.com/jerus-org/zola-container/pull/52
[#54]: https://github.com/jerus-org/zola-container/pull/54
[#55]: https://github.com/jerus-org/zola-container/pull/55
[#56]: https://github.com/jerus-org/zola-container/pull/56
[#57]: https://github.com/jerus-org/zola-container/pull/57
[#60]: https://github.com/jerus-org/zola-container/pull/60
[#59]: https://github.com/jerus-org/zola-container/pull/59
[#61]: https://github.com/jerus-org/zola-container/pull/61
[#62]: https://github.com/jerus-org/zola-container/pull/62
[Unreleased]: https://github.com/jerus-org/zola-container/compare/v0.19.2...HEAD
[0.19.2]: https://github.com/jerus-org/zola-container/releases/tag/v0.19.2

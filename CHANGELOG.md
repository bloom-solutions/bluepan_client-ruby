# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [1.0.0] - 2017-12-28
### Changed
- Factories use FactoryBot instead of FactoryGirl

## [0.4.0] - 2017-06-13
### Added
- Add `client.get_exchange_rates`

## [0.3.0] - 2016-11-15
### Added
- Add ability to get error messages in responses
- Add `bluepan_client_recipient` factory
- Make `CreateRemittanceResponse`'s `remittance` and `recipient` are lazily evaluated

## [0.2.0] - 2016-11-14
### Added
- Add factory for BluepanClient::Strategy

## [0.1.0] - 2016-11-11
### Added
- Initial working version

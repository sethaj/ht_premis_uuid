# HtPremisUuid

A UUID creator specifically for PREMIS events used in the Hathitrust.

## Installation

Add this line to your application's Gemfile:

    gem 'ht_premis_uuid'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ht_premis_uuid

## Usage

uuid = HtPremisUuid.generate('ht namespace', ' ht id', 'premis event name')

# HtPremisUuid

A UUID creator specifically for PREMIS events used in the Hathitrust.

## Installation

Add this line to your application's Gemfile:

    gem 'ht_premis_uuid', :git => 'https://github.com/sethajoh/ht_premis_uuid.git'

And then execute:

    $ bundle

## Usage

    uuid = HtPremisUuid.generate('ht namespace', ' ht id', 'premis event name')

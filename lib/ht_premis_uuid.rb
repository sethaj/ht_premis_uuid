require "uuidtools"
require "ht_premis_uuid/version"
require "ht_premis_uuid/htuuid"

module HtPremisUuid

  def self.generate (namespace, object_id, premis_event)

    now = Time.now.gmtime.iso8601

    tohash  = [namespace, object_id, premis_event, now].join('-')

    return UUIDTools::UUID.md5_create(UUIDTools::UUID.parse(HtPremisUuid::HT_UUID), tohash).to_s
  end
end

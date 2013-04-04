require 'helper'

class TestHtPremisUuid < Test::Unit::TestCase

  def test_has_version
    assert HtPremisUuid::VERSION
  end

  def test_has_ht_uuid
    assert HtPremisUuid::HT_UUID
  end

  def test_returns_valid_uuid
    # regex from http://stackoverflow.com/a/6640851
    assert HtPremisUuid.generate('namespace', 'object id', 'premis event name')
      .match('[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}');
  end

  # If same parameters used, UUID should be same.
  def test_reproducible
    time = Time.now
    ns   = 'namespace'
    o_id = 'object id'
    p_e  = 'premis event name'
    uuid_1 = HtPremisUuid.generate(ns, o_id, p_e, :time => time)
    uuid_2 = HtPremisUuid.generate(ns, o_id, p_e, :time => time)
    assert uuid_1 == uuid_2, "Should be same: #{uuid_1} #{uuid_2}";
  end
end

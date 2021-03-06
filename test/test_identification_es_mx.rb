# encoding: utf-8

require 'helper'

# Author Guapolo <github.com/guapolo>
class TestIdentificationMX < Test::Unit::TestCase

  def test_rfc_persona_moral
    re = /\A[a-zñÑ&]{3}\d{2}[0-1][0-9][0-3][0-9][a-z0-9]{3}\z/i
    assert_match(re, FFaker::IdentificationMX.rfc_persona_moral)
  end

  def test_rfc_persona_fisica
    re = /\A[a-zñÑ]{4}\d{2}[0-1][0-9][0-3][0-9][a-z0-9]{3}\z/i
    assert_match(re, FFaker::IdentificationMX.rfc_persona_fisica)
  end

  def test_curp
    or_curp_states_abbr = FFaker::IdentificationMX::ESTADOS_CURP.join("|")
    re = /\A[a-z][aeioux][a-z]{2}[0-9]{2}[0-1][0-9][0-3][0-9][hm]#{or_curp_states_abbr}[bcdfghjklmnñpqrstvwxyz]{3}[0-9a-z][0-9]\z/i
    assert_match(re, FFaker::IdentificationMX.curp)
  end

end

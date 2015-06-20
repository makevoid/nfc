require 'thread'
require 'nfc/nfc'
require_relative './nfc/device'
require_relative './nfc/iso14443a'
require_relative './nfc/felica'

###
# NFC is a class for dealing with Near Field Communication systems.  This
# library will read RFID tags from an RFID reader.
module NFC
  VERSION = '3.1.1'
end

require "mastodon_cthulhu/version"
require "mastodon_cthulhu/convert"
require "mastodon_cthulhu/convert_random"
require "mastodon_cthulhu/statuses_controller"

module MastodonCthulhu
  def self.setup(&proc)
    # create function for Monkey patch
    extend self
    (
    class << self;
      self
    end).module_eval do
      define_method 'convert_toot', &proc
      # define_method 'b' do
      #   p 'b'
      # end
    end

    # Monkey patch
    Api::V1::StatusesController.prepend(ApiV1StatusesControllerPatch)
  end
end

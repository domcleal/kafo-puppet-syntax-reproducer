manifest = File.expand_path('test.pp')

require 'puppet-syntax'
PuppetSyntax::Manifests.new.check([manifest])

require 'kafo_parsers/puppet_module_parser'
puts KafoParsers::PuppetModuleParser.parse(manifest).inspect

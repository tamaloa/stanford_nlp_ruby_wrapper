require 'test/unit'

require File.join(File.dirname(__FILE__), '..', 'lib', 'stanford_nlp_ruby_wrapper')

#We have to load both jars at once to avoid java classloader problems (jars loaded later are not really loaded)
Rjb::load('bin/stanford-postagger-2012-03-09/stanford-postagger.jar:bin/stanford-ner-2012-04-07/stanford-ner.jar',['-Xmx1024m'])
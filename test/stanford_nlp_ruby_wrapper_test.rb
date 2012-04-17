require File.expand_path(File.dirname(__FILE__) + "/test_helper")
include StanfordNlpRubyWrapper

class StanfordNlpRubyWrapperTest < Test::Unit::TestCase

  def setup
    @sentence = "Good afternoon Rajat Raina, how are you today?"
  end

  def  test_pos_tagger_on_sentence
    tagger = PartOfSpeechTagger.new
    expected_tagging = "Good/JJ afternoon/NN Rajat/NNP Raina/NNP ,/, how/WRB are/VBP you/PRP today/NN ?/. "

    assert_equal expected_tagging, tagger.tag_sentence(@sentence)
  end

  def test_ner_on_sentence
    ner = NamedEntityRecognizer.new
    expected_classification = "Good afternoon <PERSON>Rajat Raina</PERSON>, how are you today?"

    assert_equal expected_classification, ner.classify(@sentence)
  end

  def test_ner_directly
    ner = NamedEntityRecognizer.new
    java_classifier = ner.java_classifier
    expected_classification = "Good/O afternoon/O Rajat/PERSON Raina/PERSON,/O how/O are/O you/O today/O?/O"

    assert_equal expected_classification, java_classifier.classifyToString(@sentence)
  end

end
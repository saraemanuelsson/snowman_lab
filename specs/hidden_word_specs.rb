require('minitest/autorun')
require('minitest/reporters')
require_relative('../hidden_word')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestHiddenWord < MiniTest::Test 

    def setup
        
        @hidden_word = HiddenWord.new("hogwarts")

    end

    def test_string_to_array()
        assert_equal(["h", "o", "g", "w", "a", "r", "t", "s"], @hidden_word.string_to_array(@hidden_word.word))
    end

end
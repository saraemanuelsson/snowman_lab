require('minitest/autorun')
require('minitest/reporters')
require_relative('../player')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestPlayer < MiniTest::Test 

    def setup
        @player = Player.new("Harry")
    end

    def test_player_name()
        assert_equal("Harry", @player.name())
    end

    def test_player_lives()
        assert_equal(6, @player.lives)
    end

end
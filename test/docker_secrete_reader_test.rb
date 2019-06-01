# frozen_string_literal: true
require 'test_helper'
require 'docker_secret_reader'
class DockerSecretReaderTest < Minitest::Test
  def teardown
    ENV['TEST_ENV_VAR'] = nil
  end

  def test_returns_env
    ENV['TEST_ENV_VAR'] = 'test_env123!!!'
    assert_equal(DockerSecretReader['TEST_ENV_VAR'], 'test_env123!!!')
  end
end

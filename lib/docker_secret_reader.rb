# frozen_string_literal: true

class DockerSecretReader
  def self.[](secret_name, type: :value, file_path: '', file_type: :raw)
    raise unless type == :value || type == :file
    raise if type == :file && !File.file?(file_path)
    raise unless file_type == :raw || file_type == :json || file_type == :yaml 
    return ENV[secret_name]
  end

  def self.setup(type: :default)
    if type == :default
      add_file(secret_type: :value, file_path: '/var/run/secret', file_type: :yaml, name: 'default')
    end
  end

  def self.add_file(secret_type:, file_path:, file_type:, name: '' )
  end
  setup
end